# MONTHLY MEAN ANOMALY
# Restituisce un nuovo dataset in cui in ogni cella c'è la differenza
# tra il mese selezionato e la media di quello stesso mese nell'intero intervallo

# _mm = Monthly Mean
sst_mm = ds.groupby('time.month').mean('time')
sst_anom = ds.groupby('time.month') - sst_mm




# DETRENDING
p = ds.polyfit(dim='time', deg=xxx)
fit = xr.polyval(ds['time'], p.polyfit_coefficients)
sst_detr= ds - fit


# Oppure, usando la funzione:
def detrend_dim(da, dim, deg=1):
    p = da.polyfit(dim=dim, deg=deg)
    fit = xr.polyval(da[dim], p.polyfit_coefficients)
    return da - fit
# per usarla:
sst_detr=detrend_dim(ds,'xxx',deg=xxx)





# PDF
# Sostituire AAAAA con il dataset che vogliamo (p.es. ds1)

bins=np.arange(valore_min,valore_nax,incremento)
histhr, bin_edges = np.histogram(AAAAA, bins, density=True)
bin_center=(bin_edges[0:-1]+bin_edges[1:])/2

fig, ax = plt.subplots(nrows=1, ncols=1,figsize=(xxx,xxx))
ax.plot(bin_center,histhr,'colore',label='legenda')
ax.grid()
ax.legend()
plt.title('Titolo PDF')




# POWER SPECTRUM
# Sostituire AAAAA con il dataset che vogliamo (p.es. ds1)

L=len(AAAAA)
LPS=int((L/2))
Lyr=L/12
prds_yrs=Lyr/np.arange(1,LPS)
sfft_all=np.fft.fft(AAAAA)
sfft=sfft_all[1:LPS]

sfft_amp=2*sfft/L
psp=np.abs(sfft_amp)

fig, ax = plt.subplots(nrows=1, ncols=1,figsize=(10, 5))
ax.plot(prds_yrs,psp,'.-')
ax.title.set_text('s_fft norm. to get amplitudes in '+dse['sst'].units)
ax.set_ylabel(dse['sst'].units)
ax.set_xlabel('time in years')
plt.xlim(right=20)
plt.xlim(left=0)

df_psp = pd.DataFrame(psp)
psp_mavg=df_psp.rolling(7, center=True).mean()
ax.plot(prds_yrs,psp_mavg,'r')












# FUNZIONI VARIE
# create a fucntion to detrend the data
def detrend_dim(da, dim, deg=1):
    # detrend along a single dimension
    p = da.polyfit(dim=dim, deg=deg)
    fit = xr.polyval(da[dim], p.polyfit_coefficients)
    return da - fit

def anom(xarr):
    #monthly mean anomaly (No-detrened)
    xarr_clm = xarr.groupby('time.month').mean('time')
    xarr_ano = xarr.groupby('time.month') - xarr_clm
    return xarr_ano, xarr_clm

def anomd(xarr):
    #detrened monthly mean anomaly
    xarr_det=detrend_dim(xarr,'time', deg=1)
    xarr_clm = xarr_det.groupby('time.month').mean('time')
    xarr_ano = xarr_det.groupby('time.month') - xarr_clm
    return xarr_ano, xarr_clm

def npcovariance(FLDtyx, IDXt):
    # Regression map between a field (T,X,Y) and a timeseries (T)
    FLD = FLDtyx - np.mean(FLDtyx, 0)
    IDX = IDXt - np.mean(IDXt)
    FLDdotIDX = np.einsum('kij,k->ij', FLD, IDX)
    return FLDdotIDX / IDXt.__len__()

def npcorrelation(FLDtyx, IDXt):
    # Correlation map between a field (T,X,Y) and a timeseries (T)
    return npcovariance(FLDtyx, IDXt) / (np.std(FLDtyx, 0) * np.std(IDXt, 0))

def npregress(FLDtyx, IDXt, std_units='yes'):
    # regression coeff. per unit of STD
    # x:fld ,y:index
    if std_units == 'yes':
        # print('Reg. coeff per units of index')
        return npcovariance(FLDtyx, IDXt) / np.std(IDXt, 0)
    else:
        # print('Reg. coeff per units of STD')
        return npcovariance(FLDtyx, IDXt) / np.var(IDXt, 0)

def npcoupling2d(FLD1, FLD2):
    #Pointwise correlation between two fields (Time,Lon,Lat)
    if np.array_equal(FLD1.shape, FLD2.shape):
        T, M, N = FLD1.shape
        coupling2d = np.empty((M, N))
        coupling2d[:] = np.nan
        Atz = np.reshape(FLD1, (T, M * N))
        Btz = np.reshape(FLD2, (T, M * N))
        Astd = np.std(Atz, 0)
        Bstd = np.std(Btz, 0)
        AtzZ = np.einsum('ji,i->ji', Atz, 1 / Astd)
        AtzZM = (AtzZ - AtzZ.mean(axis=0))
        BtzZ = np.einsum('ji,i->ji', Btz, 1 / Bstd)
        BtzZM = (BtzZ - BtzZ.mean(axis=0))
        Rtz = np.einsum('ij,ij->j', AtzZM, BtzZM) / T
        coupling2d = np.reshape(Rtz, (M, N))
    else:
        print('The arrays must have the same shape')
    return coupling2d

def nplagcorr(FLDtyx, IDXt, lags):
    # Lag-correlation maps
    #Works only if the absolute value of any lags is smaller than 24
    T, Y, X = FLDtyx.shape
    lagcorr = np.zeros([len(lags), Y, X])
    lagmin = min(lags)
    lagmax = max(lags)
    for i in range(len(lags)):
        IDXt[-(lagmin) + lags[i]:-lagmax + lags[i]].shape
        FLDtyx[-(lagmin):-lagmax].shape
        lagcorr[i, :, :] = npcorrelation(FLDtyx[24:-24, :], IDXt[24 + lags[i]: -24 + lags[i]])
    return lagcorr


def nplagreg(FLDtyx, IDXt, lags):
    # Lag-regression maps
    #Works only if the absolute value of any lags is smaller than 24
    T, Y, X = FLDtyx.shape
    lagreg = np.zeros([len(lags), Y, X])
    lagmin = min(lags)
    lagmax = max(lags)
    for i in range(len(lags)):
        IDXt[-(lagmin) + lags[i]:-lagmax + lags[i]].shape
        FLDtyx[-(lagmin):-lagmax].shape
        lagreg[i, :, :] = npregress(FLDtyx[24:-24, :], IDXt[24 + lags[i]: -24 + lags[i]])
    return lagreg

def composite_vector(ind1, THRD, index_comp_names=None):
    """
     This function compute composite indices for a given threshold
     :param ind1: time series 1
     :param THRD: threshold to use for the composite
     :return: dictionary with composite_name keys and composite indices

            Single-index composite order:
                #1: ind1 < -THRD
                #2: -THRD < ind1 < THRD
                #3: ind1 > THRD
     """
    NegInd1 = ind1 < -THRD
    PosInd1 = ind1 > THRD
    NeuInd1 = ~(NegInd1 | PosInd1)
    # NegInd2 = ind2 < -THRD
    # PosInd2 = ind2 > THRD
    # NeuInd2 = ~(NegInd2 | PosInd2)

    default_comp_names = ['NegInd1', 'NeuInd1', 'PosInd1']

    if index_comp_names is None:
        index_comp_names = default_comp_names

    index_comp = {}
    j = 0
    for name in index_comp_names:
        index_comp[name] = eval(default_comp_names[j])
        j = j + 1
    return index_comp


