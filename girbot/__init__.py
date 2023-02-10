from discord.ext.commands import Bot
import importlib
import pkgutil
import discord

intents = discord.Intents.default()
intents.message_content = True

client = Bot(command_prefix="!", intents=intents)

discovered_plugins = {
    name: importlib.import_module(name)
    for finder, name, ispkg
    in pkgutil.iter_modules()
    if name.startswith('girbot-')
}
