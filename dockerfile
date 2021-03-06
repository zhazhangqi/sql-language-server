FROM node:12

COPY ./package.json yarn.lock /opt/sql-language-server/
COPY ./packages/server/package.json /opt/sql-language-server/packages/server/
COPY ./packages/sql-parser/package.json /opt/sql-language-server/packages/sql-parser/
COPY ./packages/sqlint/package.json /opt/sql-language-server/packages/sqlint/
COPY ./example/monaco_editor/package.json /opt/sql-language-server/example/monaco_editor/
COPY ./example/monaco_editor/.sqllsrc.personal.json /root/.config/sql-language-server/.sqllsrc.json
WORKDIR /opt/sql-language-server
RUN yarn