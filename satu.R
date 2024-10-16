# Data Life Ladder di Indonesia dari tahun 2006 hingga 2023
data1 <- data.frame(
    year = c(2006:2023),
    life_ladder = c(
        4.95, 5.10, 4.81, 5.47, 5.46, 5.17, 5.37, 5.29, 5.60, 5.04,
        5.14, 5.09, 5.34, 5.35, 4.83, 5.43, 5.58, 5.69
    )
)

# 1. Menampilkan plot di konsol
plot(data1$year, data1$life_ladder,
    type = "p", # 'p' untuk titik (point)
    col = "#FF8A8A", # Warna titik
    pch = 19, # Tipe simbol (19 untuk bulat penuh)
    xlab = "Year", # Label sumbu X
    ylab = "Life Ladder", # Label sumbu Y
    main = "World Happiness (Indonesia) Data Visualization from 2006 to 2023" # Judul plot
)
grid() # Menambahkan grid ke plot

# 2. Menyimpan grafik sebagai file PNG (karena SVG tidak bisa langsung disimpan tanpa package lain)
png("hasil_scatterplot.png", width = 700, height = 500)
plot(data1$year, data1$life_ladder,
    type = "p",
    col = "#FF8A8A",
    pch = 19,
    xlab = "Year",
    ylab = "Life Ladder",
    main = "World Happiness (Indonesia) Data Visualization from 2006 to 2023"
)
grid() # Menambahkan grid ke plot
dev.off() # Menutup perangkat grafis
