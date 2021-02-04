class TeamMailer < ApplicationMailer
    def mail_after_destroy(agenda)
        team_id = agenda.team_id
        team_members = User.where(keep_team_id: team_id)
        team_members.each do |member|
            mail(to: member.email, subject: `#{agenda.title}, has been destroyed`)
        end
    end
end
