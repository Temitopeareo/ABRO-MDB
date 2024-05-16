FROM quay.io/suhailtechinfo/suhail-v2
RUN git clone https://github.com/Temitopeareo/ABRO-MDB /root/Temitope
RUN npm cache clean --force
RUN rm -rf /root/Temitopeareo/node_modules
WORKDIR /root/Temitopeareo
RUN npm install
EXPOSE 3000
CMD ["npm","start" ]
