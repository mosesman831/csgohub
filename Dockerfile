FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

ENV CSGO_GSLT="your_gslt_here" \
    CSGO_WS_API_KEY="your_api_key_here" \
    CSGO_IP="your_server_ip_here" \
    CSGO_PORT="your_server_port_here" \
    CSGO_MAP="your_map_here" \
    CSGO_MAX_PLAYERS="your_max_players_here" \
    CSGO_HOSTNAME="your_server_name_here" \
    CSGO_RCON_PW="your_rcon_password_here" \
    CSGO_PW="your_server_password_here" \
    CSGO_TICKRATE="your_tickrate_here" \
    CSGO_GAME_TYPE="your_game_type_here" \
    CSGO_GAME_MODE="your_game_mode_here" \
    CSGO_MAP_GROUP="your_map_group_here" \
    CSGO_TV_ENABLE="your_tv_enable_here" \
    CSGO_TV_NAME="your_tv_name_here" \
    CSGO_TV_PASSWORD="your_tv_password_here" \
    CSGO_TV_DELAY="your_tv_delay_here" \
    CSGO_TV_PORT="your_tv_port_here" \
    CSGO_TV_DELAYMAPCHANGE="your_tv_delaymapchange_here" \
    CSGO_TV_DELTACACHE="your_tv_deltacache_here" \
    CSGO_TV_DISPATCHMODE="your_tv_dispatchmode_here" \
    CSGO_TV_MAXCLIENTS="your_tv_maxclients_here" \
    CSGO_TV_MAXRATE="your_tv_maxrate_here" \
    CSGO_TV_OVERRIDEMASTER="your_tv_overridemaster_here" \
    CSGO_TV_SNAPSHOTRATE="your_tv_snapshotrate_here" \
    CSGO_TV_TIMEOUT="your_tv_timeout_here" \
    CSGO_TV_TRANSMITALL="your_tv_transmitall_here" \
    CSGO_FORCE_NETSETTINGS="your_force_netsettings_here" \
    CSGO_PARAMS="your_additional_parameters_here" \
    CSGO_DISABLE_BOTS="your_disable_bots_here" \
    CSGO_CUSTOM_FILES_DIR="your_custom_files_directory_here" \
    SERVER_CONFIGS="your_server_configs_here" \
    SERVER_CONFIGS_VERSION="your_server_configs_version_here"

CMD ["./srcds_run", "-game", "csgo"]
