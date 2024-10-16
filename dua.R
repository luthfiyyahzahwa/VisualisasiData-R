# Data yang diberikan
data <- data.frame(
    year = c(2006:2023),
    value = c(0.77, 0.70, 0.67, 0.78, 0.81, 0.82, 0.83, 0.79, 0.90, 0.81, 0.79, 0.80, 0.81, 0.80, 0.75, 0.82, 0.83, 0.78)
)

# Menyimpan grafik dalam format PNG
png("hasil_barplot.png", width = 800, height = 600)  # Atur ukuran gambar

# Membuat barplot
barplot(
    height = data$value, # Tinggi batang
    names.arg = data$year, # Nama tahun di sumbu X
    col = "#A594F9", # Warna batang
    border = NA, # Menghilangkan border pada batang
    main = "Bar Chart: World Happiness (Indonesia) Data Visualization from 2006 to 2023", # Judul
    xlab = "Year", # Label sumbu X
    ylab = "Value", # Label sumbu Y
    ylim = c(0, 1), # Batas sumbu Y
    las = 2 # Memutar label sumbu X 90 derajat
)

# Menambahkan grid ke plot
grid(nx = 0, ny = NULL, col = "lightgray", lty = "dotted") # Menambahkan grid

# Menambahkan nilai di atas batang
text(
    x = barplot(height = data$value, plot = FALSE), # Mendapatkan posisi X batang
    y = data$value + 0.02, # Posisi Y sedikit di atas batang
    labels = data$value, # Nilai yang ditampilkan
    cex = 0.8 # Ukuran teks
)

# Menambahkan garis horizontal di sumbu Y
abline(h = 0, lty = 2, col = "gray") # Garis putus-putus

# Menutup perangkat grafis dan menyimpan file PNG
dev.off()