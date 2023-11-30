# Menggunakan node alpine image dari Docker Hub
FROM node:18-alpine

# Menetapkan direktori kerja di dalam container
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json (jika ada) ke dalam container
COPY package*.json ./

# Menginstall dependencies
RUN npm install

# Menyalin seluruh kode sumber ke dalam container
COPY . .

# Mengekspos port 3000
EXPOSE 3000

# Menjalankan aplikasi ketika container dijalankan
CMD ["node", "app.js"]
