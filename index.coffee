if process.env.NODETIME_ACCOUNT_KEY
    require("nodetime").profile
        accountKey: process.env.NODETIME_ACCOUNT_KEY

User                                                    = require './src/user'
Brain                                                   = require './src/brain'
Robot                                                   = require './src/robot'
Adapter                                                 = require './src/adapter'
Response                                                = require './src/response'
{Listener,TextListener}                                 = require './src/listener'
{TextMessage,EnterMessage,LeaveMessage,CatchAllMessage} = require './src/message'

module.exports = {
  User
  Brain
  Robot
  Adapter
  Response
  Listener
  TextListener
  TextMessage
  EnterMessage
  LeaveMessage
  CatchAllMessage
}

module.exports.loadBot = (adapterPath, adapterName, enableHttpd, botName) ->
  new Robot adapterPath, adapterName, enableHttpd, botName
