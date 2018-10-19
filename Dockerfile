FROM projectriff/python3-function-invoker:0.1.0-snapshot
ARG FUNCTION_MODULE=upper.py
ARG FUNCTION_HANDLER=upper
ADD ./${FUNCTION_MODULE} /
ENV FUNCTION_URI file:///${FUNCTION_MODULE}?handler=${FUNCTION_HANDLER}
