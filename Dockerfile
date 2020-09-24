FROM python:3.6-buster

RUN pip install jupyter wand && \
	mkdir /tmp/myqlm && \
	cd /tmp/myqlm && \
	wget https://myqlm.github.io/distrib/myqlm-0.0.7_linux_py3.6.zip && unzip myqlm-0.0.7_linux_py3.6.zip  && \
	pip install ./qat_comm-0.0.7-py3.6-none-linux_x86_64.whl ./qat_core-0.0.7-py3.6-none-linux_x86_64.whl \
		./qat_lang-0.0.7-py3.6-none-linux_x86_64.whl ./qat_variational-0.0.7-py3.6-none-linux_x86_64.whl \ 
		./myqlm_simulators-0.0.7-py3-none-any.whl && mkdir /myqlm && mv ./license /myqlm/ && cd /myqlm/license/ && \
		rm -rf /tmp/myqlm && unzip EULA.zip && rm EULA.zip

RUN python -m qat.magics.install

WORKDIR /myqlm

CMD ["jupyter","notebook","--port=8899","--ip=0.0.0.0","--allow-root"]
