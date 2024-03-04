# Supponiamo di voler fare un grafico con le variabili XXX1 e XXX2 e con le
# rispettive coordinate temporali nell'asse x (se vogliamo altri valori
# basta sostituire XXX.time con la variabile che vogliamo, purché abbia
# la stessa dimensione):

fig, ax = plt.subplots(nrows=xx, ncols=xx,figsize=(xx,xx))
plt.rcParams.update({'font.size': xx})
ax.set(xlim=[xx,xx],
       ylim=[xx,xx],
       xlabel="Titolo X",
       ylabel="Titolo Y",
       title="Titolo Grafico")
ax.grid()
ax.plot(XXX1.time,XXX1,'colore 1',label='legenda 1',linewidth=xx)
ax.plot(XXX2.time,XXX2,'colore 2',label='legenda 2',linewidth=xx)
ax.legend()



# Se vogliamo formattare la data:
date_form = DateFormatter("%d-%m-%y")
ax.xaxis.set_major_formatter(date_form)

# se vogliamo mettere i mesi sull'asse x
ax.set_title(calendar.month_name[k+1])




# MAPPA SINGOLA
# Supponiamo che ds_a sia un dataset che abbia coordinate lat e lon ma solo
# un valore temporale:

fig, ax = plt.subplots(nrows=1, ncols=1, figsize=(xx,xx))
ax = plt.subplot(1, 1, 1, projection=ccrs.PlateCarree())
ax.coastlines()
ds_a.plot.pcolormesh(ax=ax, cmap='coolwarm').set_label('')
ax.set_extent([xxx, xxx, xxx, xxx], crs=ccrs.PlateCarree())
gl = ax.gridlines(crs=ccrs.PlateCarree(), draw_labels=True,
                  linewidth=xx, color='colore', alpha=0.5, linestyle='stile')
ax.set_xlabel('Longitude')
ax.set_ylabel('Latitude')
ax.set_title('Titolo grafico')



# SELEZIONARE UN PUNTO SULLA MAPPA
# Singolo punto:
plt.plot(lon,lat,color='colore', marker='o')

# Per una serie di punti:
points_lon=[-145,-145,-110,110,18]
points_lat=[50,15,50,50,35]
for p in range(len(points_lat)):
  plt.plot(points_lon[p],points_lat[p],color='colore', marker=''o)




# RIQUADRI MULITPLI
# Supponiamo che ds_a sia un dataset che abbia coordinate lat e lon e che abbia
# diversi valori temporali (mese per mese supponiamo):

import warnings
warnings.filterwarnings("ignore")

k=-1
fig, ax = plt.subplots(nrows=xxx, ncols=yyy, figsize=(20,10))
B=[1,2,3,4,...,yyy]
for i in range(xxx):
  i=i+1
  for j in B:
   k=k+1
   ax = plt.subplot(xxx, yyy, k+1, projection=ccrs.PlateCarree())
   ax.coastlines()
   ds_a[k].plot.pcolormesh(ax=ax, cmap='coolwarm')
   ax.set_extent([xxx, xxx, xxx, xxx], crs=ccrs.PlateCarree())


# Se voglio che ad ogni box compaia un nome diverso o con titoli diversi:
anno_iniziale = xxxx
anno_finale = xxxx
m = []
for anno in range(anno_iniziale, anno_finale + 1):
    for _ in range(4):
        m.append(str(anno))
# per esempio questo crea un array con [xxxx,xxxx,xxxx,xxxx,xxxx2,xxxx2,
#                                       xxxx2,xxxx2,xxxx3,...]
# Se metto range(12) allora ci sono 12 volte il primo anno, 12 il secondo,...

# Questo è utile nel caso dei mesi come titolo
ax.set_title(calendar.month_name[k+1]+' '+m[k])
