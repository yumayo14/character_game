require_relative 'job.rb'
require_relative 'power_checker'
require_relative 'guilds/fighter_guild'
require_relative 'guilds/warrior_guild'
require_relative 'guilds/wizard_guild'

class Guild
  attr_reader :members
  def initialize
    @members = set_members
  end

  def set_members
    FighterGuild.new.members + WarriorGuild.new.members + WizardGuild.new.members
  end

  def strongest_character
    PowerChecker.new(members).strongest_character
  end
end

guild = Guild.new
p guild.members
