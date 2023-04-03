FROM timche/docker-csgo

# Add configuration file for the hub
ADD csgo_hub.cfg /srcds/csgo/cfg/csgo_hub.cfg

# Expose necessary ports
EXPOSE 27015/tcp
EXPOSE 27015/udp

# Set environment variables for the hub
ENV SERVER_NAME "CSGO Hub"
ENV RCON_PASSWORD "your_rcon_password_here"
ENV GAME_MODE "casual"
ENV MAP_GROUP "mg_bomb"
ENV MAP "de_dust2"
ENV MAX_PLAYERS "32"

# Start the server with the hub configuration file
CMD ["/srcds_run", "-game", "csgo", "-console", "-usercon", "-port", "27015", "+game_type", "0", "+game_mode", "${GAME_MODE}", "+mapgroup", "${MAP_GROUP}", "+map", "${MAP}", "-maxplayers_override", "${MAX_PLAYERS}", "+rcon_password", "${RCON_PASSWORD}", "+exec", "csgo_hub.cfg"]
