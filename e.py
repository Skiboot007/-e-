import discord.ext import commands
import time
client = commands.Bot(command_prefix = '.')
@client.event
async def on_ready():
    print("bot is online")

@client.command()
async def test():
        print("test")


client.run('ODU2OTA2OTgyODYxNzAxMTIw.YNH20Q.1VMV6QohqbWYKfRgp0w0JYqK2bg')
