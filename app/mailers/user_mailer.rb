class UserMailer < ApplicationMailer
  default from: 'no-reply@lechoixdansladate.org'

  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = "https://fr.wikipedia.org/wiki/Contrepeterie"

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: "Merci d'avoir choisi Le Choix dans la Date !")
  end

  def join_email(attendance)

  	@attendance = attendance

  	@url = "https://fr.wikipedia.org/wiki/Contrepeterie"

  	mail(to: @attendance.event.admin.email, subject: "Un nouvel utilisateur participe à votre évènement !")
  end
end
