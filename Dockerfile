FROM Almortage/jmub:alpine

#clonning repo 
RUN git clone https://github.com/Almortage/jmub/tree/master.git /root/razan
#working directory 
WORKDIR /root/razan

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/razan/bin:$PATH"

CMD ["python3","-m","razan"]
