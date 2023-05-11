# ========================================================================
# Example of how to extend the SchemaCrawler Docker image. See
# https://github.com/schemacrawler/SchemaCrawler-Docker
# for instructions on how to use.
# ========================================================================

FROM schemacrawler/schemacrawler

USER schcrwlr
WORKDIR /home/schcrwlr

# Copy over any additional local jar files, such as proprietary JDBC drivers
COPY \
  --chown=schcrwlr:schcrwlr \
  ./*.jar \
  /opt/schemacrawler/lib/

COPY schemacrawler.config.properties /home/schcrwlr/

