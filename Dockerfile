FROM python:3.6

RUN pip install jupyter wand myqlm 

RUN python -m qat.magics.install

RUN pip install myqlm-interop[all]

RUN cd / && git clone https://github.com/myQLM/myqlm-notebooks.git

RUN mkdir /myqlm-notebooks/tutorials/QFT

COPY notebooks/* /myqlm-notebooks/tutorials/QFT/

WORKDIR /myqlm-notebooks 

CMD ["jupyter","notebook","--port=8899","--ip=0.0.0.0","--allow-root"]
