require "browser/aliases"

class PagesController < ApplicationController
  Browser::Base.include(Browser::Aliases)

  KEYWORDS_HOME = %w[Orthodontie\ Orléans Cabinet\ dentaire\ Orléans Soins\ orthodontiques Appareils\ dentaires Correction\ dentaire
                Braces\ Orléans Alignement\ des\ dents Orthodontiste\ Orléans Santé\ bucco-dentaire Sourire\ parfait Traitements\ orthodontiques
                Orthodontie\ pour\ enfants\ et\ adultes Services\ dentaires\ Orléans Consultation\ orthodontique Spécialiste\ en\ orthodontie
                Docteur\ Charles\ Cousin Docteur\ Marianne\ Boulenguiez PMR acenseur].freeze

  KEYWORDS_TEAM = %w[Équipe\ Ortho\ Chatelet\ Orléans Docteur\ Charles\ Cousin Docteur\ Marianne\ Boulenguiez Soins\ orthodontiques
                     Cabinet\ dentaire\ équipe\ Soins\ dentaires\ Orléans Sourires\ éclatants Expérience\ exceptionnelle Orthodontistes\ Orléans
                     Orthodontie\ pour\ enfants\ et\ adultes Équipe\ dédiée\ orthodontie].freeze

  KEYWORDS_OFFICE = %w[Équipement\ orthodontique Soins\ orthodontiques\ enfants Soins\ orthodontiques\ adolescents
                       Soins\ orthodontiques\ adultes Cabinet\ dentaire\ orthodontique Technologie\ dentaire\ moderne Technologies\ dentaires\ avancées
                       Technologie\ orthodontique\ de\ pointe Orthodontie\ innovante].freeze

  KEYWORDS_DOCUMENTATION = %w[Orthodontie\ enfance\ adulte Traitement\ orthodontique Soins\ orthodontiques\ préventifs
                              Traitement\ orthodontique\ fonctionnel Réalignement\ dentaire Orthodontie\ adolescent Orthodontie\ adulte
                              Santé\ dentaire\ orthodontique Beauté\ sourire\ orthodontique Dentisterie\ orthodontique Traitements\ individualisés\ orthodontiques
                              Résultats\ optimaux\ orthodontie Orthodontie Enfance Adolescents Adultes Traitements\ orthodontiques Prévention\ orthodontique
                              Esthétique\ dentaire Santé\ bucco-dentaire Cabinet\ orthodontique Technologie\ orthodontique Résultats\ optimaux
                              Technologies\ orthodontiques].freeze

  private_constant :KEYWORDS_HOME, :KEYWORDS_TEAM, :KEYWORDS_OFFICE, :KEYWORDS_DOCUMENTATION


  def construction; end

  def home
    @browser = Browser.new(request.user_agent)

    set_meta_tags(
      title: "Accueil",
      description: "Bienvenue au Cabinet d’Orthodontie du Châtelet-Orléans cœur de ville. Les docteurs Marianne Boulenguiez et
                    Charles Cousin, ainsi que toute leur équipe sont heureux de vous accueillir sur leur site internet destiné à vous donner
                    les meilleurs informations pédagogiques et conseil sur l’orthodontie.",
      keywords: KEYWORDS_HOME.join(", ")
    )

    @check_browser = @browser.chrome? || @browser.safari? || @browser.edge?
    @check_mobile = @browser.mobile?
  end

  def team
    set_meta_tags(
      title: "L'Équipe",
      description: "Explorez l'équipe dévouée du cabinet Ortho Chatelet à Orléans, prête à vous accompagner tout au long de
                    vos soins orthodontiques. Rencontrez le Docteur Charles Cousin et le Docteur Marianne Boulenguiez, ainsi que notre
                    équipe attentionnée, déterminée à vous offrir des sourires éclatants et une expérience exceptionnelle.",
      keywords: KEYWORDS_TEAM.join(", ")
    )
  end

  def office
    set_meta_tags(
      title: "L'Équipement",
      description: "Notre cabinet est exclusivement dédié aux soins orthodontiques des enfants, des adolescents et des adultes. Soucieux de
                    rester à la pointe de la technologie pour vous offrir des soins optimaux, nous utilisons les technologies les plus récentes et
                    innovantes dans notre pratique quotidienne.",
      keywords: KEYWORDS_OFFICE.join(", ")
    )
  end

  def documentation
    set_meta_tags(
      title: 'Informations Pratiques',
      description: "Découvrez l'orthodontie pour tous les âges, avec des traitements préventifs dès l'enfance et des solutions esthétiques pour
                    les adolescents et les adultes. Notre cabinet utilise des technologies de pointe pour des résultats optimaux, offrant ainsi des
                    sourires radieux et une meilleure santé bucco-dentaire.",
      keywords: KEYWORDS_DOCUMENTATION.join(", ")
    )
  end

  def google_verification
    render plain: "google-site-verification: googleb4e2b0c6f4b2d5e2.html"
  end
end
