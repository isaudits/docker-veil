FROM isaudits/msf:minimal
    
RUN apt-get -y update && \
    apt-get install -y \
        xvfb \
        git \
        sudo \
        python && \
    cd /opt/ && \
    git clone --depth=1 https://github.com/Veil-Framework/Veil /opt/Veil && \
    cd /opt/Veil/config/ && \
    #fix METASPLOIT_PATH
    sed -i 's|/opt/metasploit-framework/embedded/framework/|/opt/metasploit/|' update-config.py && \
    #fix MSFVENOM_PATH
    sed -i 's|/usr/local/bin/|/usr/bin/|' update-config.py && \
    #run in framebuffer so that wine installs successfully...
    xvfb-run ./setup.sh --silent && \
    # Cleanup
    rm -rf /opt/Veil/.git && \
    apt-get remove -y \
        xvfb && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*r

WORKDIR /opt/Veil

CMD ["/bin/bash"]

