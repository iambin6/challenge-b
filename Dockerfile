# ===================================================
# 🐌 CHALLENGE B — Dockerfile CHƯA TỐI ƯU
# ===================================================
# Dockerfile này hoạt động nhưng tạo image RẤT LỚN
# Nhiệm vụ: Tối ưu để image nhỏ nhất có thể!
# ===================================================

FROM node:20

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "src/index.js"]
