# NV = Nome della Variabile, p.es sst, t2m, ...

# Se i dati caricati sono in Kelvin
ds['NV']=ds['NV']-273.15

# Cambiare unità di misura
ds['NV'] = ds.t2m.assign_attrs(units='°C')

# Media nel tempo
ds_m=ds.mean('time')

# Media latitudine/longitudine
ds_m=ds.mean(dim=('lat', 'lon'))

# STD:
ds_std = ds.std(axis=0)

# Media Mobile
A= dimensione finestra mobile
ds_mm=ds.rolling(A, center=True).mean()

# Selezionare un intervallo temporale:
start='xxxx-xx-xx'
end='xxxx-xx-xx'
ds1=ds.sel(time=slice(start,end))


# Media di un intervallo:
ds1_m=ds1.mean('time')
# Oppure tutto insieme
ds1_m=ds.sel(time=slice((start,end))).mean('time')


# Voglio selezionare, per sst, una fascia latitudinale tra [20,25]:
ds1=ds.sel(lat=slice(20,25))


# Voglio selezionare una zona rettangolare:
ds1=ds.sel(lat=slice(20, 25), lon=slice(-60,60))

# Voglio fare una media in quella regione solo lon e lat
ds1=ds.sel(lat=slice(20, 25), lon=slice(-60,60)).mean(dim=('lat', 'lon'))

# Raggruppa in mesi (e fa la media dentro questo intervallo) i valori di sst
ds1=ds.groupby('time.month')


# Per ottenere una media di ogni mesa divisa in 12 mesi (cioè la media di tutti
# i Gennaio, tutti i Febbraio, ...)
ds1 = ds.groupby('time.month').mean('time')
# Questo è utile per fare la climatologia e l'anomalia

# Per ottenere la deviazione standard di ogni mesa:
ds1 = ds.groupby('time.month').std('time')

# (1M,6D,D,5Y,Y,24M,...):
ds1=ds.resample(time='1M').mean('time')
