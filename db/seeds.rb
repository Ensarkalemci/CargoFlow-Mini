
deniz=TransportMode.find_or_create_by!(name: "Deniz")
hava=TransportMode.find_or_create_by!(name: "Hava")
kara=TransportMode.find_or_create_by!(name: "Kara")
demiryolu=TransportMode.find_or_create_by!(name: "Demiryolu")
kurye=TransportMode.find_or_create_by!(name: "Kurye")

deniz.service_types.find_or_create_by!(name: "FCL")
deniz.service_types.find_or_create_by!(name: "LCL")
deniz.service_types.find_or_create_by!(name: "Ro-Ro")

hava.service_types.find_or_create_by!(name: "Standart Hava Kargo")
hava.service_types.find_or_create_by!(name: "Ekspres Hava Kargo")
hava.service_types.find_or_create_by!(name: "Konsolide Hava Kargo")

kara.service_types.find_or_create_by!(name: "FTL")
kara.service_types.find_or_create_by!(name: "LTL")
kara.service_types.find_or_create_by!(name: "Frigorifik")

demiryolu.service_types.find_or_create_by!(name: "Konteyner")
demiryolu.service_types.find_or_create_by!(name: "Vagon")
demiryolu.service_types.find_or_create_by!(name: "Kombine")

kurye.service_types.find_or_create_by!(name: "Standart Paket")
kurye.service_types.find_or_create_by!(name: "Ekspres Paket")
kurye.service_types.find_or_create_by!(name: "Uluslararasi Paket")
