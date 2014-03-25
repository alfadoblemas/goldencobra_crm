# encoding: utf-8

User.delete_all
Goldencobra::Role.delete_all
admin = Goldencobra::Role.find_or_create_by_name("admin")
guest = Goldencobra::Role.find_or_create_by_name("guest")
user = User.create!(:email => "admin@goldencobra.de", :password => "administrator", :password_confirmation => "administrator", :firstname => "Admin", :lastname => "Goldencobra")
user.roles << admin

Goldencobra::Help.delete_all
Goldencobra::Help.create!(:title => "Goldencobra", :description => "https://github.com/ikusei/Goldencobra")

Goldencobra::Article.delete_all

Goldencobra::Article.create!(content: "Diese Seite existiert leider nicht.", url_name: "404", breadcrumb: "Seite nicht gefunden", title: "404",article_type: "Default Show")
Goldencobra::Article.create!(content: "kein Zugriff", url_name: "401", breadcrumb: "Kein Zugriff", title: "401",article_type: "Default Show")
Goldencobra::Article.create!(content: "", url_name: "search-results", breadcrumb: "Suchergebnisse", title: "Suchergebnisse",article_type: "Default Show")

Goldencobra::Permission.delete_all
Goldencobra::Permission.create(:sorter_id => 1, :role_id => Goldencobra::Role.find_by_name("admin").id, :action => "manage", :subject_class => ":all" )
Goldencobra::Permission.create(:sorter_id => 1, :role_id => Goldencobra::Role.find_by_name("guest").id, :action => "read", :subject_class => "Goldencobra::Article" )
Goldencobra::Permission.create(:sorter_id => 1, :role_id => Goldencobra::Role.find_by_name("guest").id, :action => "show", :subject_class => "User", :subject_id => "user.id" )
Goldencobra::Permission.create(:sorter_id => 1, :role_id => Goldencobra::Role.find_by_name("guest").id, :action => "update", :subject_class => "User", :subject_id => "user.id" )
Goldencobra::Permission.create(:sorter_id => 1, :role_id => Goldencobra::Role.find_by_name("guest").id, :action => "destroy", :subject_class => "User", :subject_id => "user.id" )


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

### MAIN MENU ###
puts "create main menu..."
Goldencobra::Menue.delete_all
main = Goldencobra::Menue.find_by_title("Top-Navigation")
main = Goldencobra::Menue.create!(title: "Top-Navigation", css_class: "", target: "") if main.blank?
home = Goldencobra::Menue.find_by_title("Startseite")
home = Goldencobra::Menue.create!(title: "Startseite", parent_id: main.id, css_class: "", target: "/") if home.blank?
news = Goldencobra::Menue.find_by_title("News")
news = Goldencobra::Menue.create!(title: "News", parent_id: main.id, css_class: "", target: "/news") if news.blank?
dates = Goldencobra::Menue.find_by_title("Termine")
dates = Goldencobra::Menue.create!(title: "Termine", parent_id: main.id, css_class: "", target: "/termine") if dates.blank?
more = Goldencobra::Menue.find_by_title("Weiteres")
more = Goldencobra::Menue.create!(title: "Weiteres", parent_id: main.id, css_class: "", target: "/weiteres") if more.blank?

puts "main menu created."


### FOOTER MENU ###
puts "create footer menu..."

footer = Goldencobra::Menue.find_by_title("Footer-Navigation")
footer = Goldencobra::Menue.create!(title: "Footer-Navigation", css_class: "", target: "") if footer.blank?
agb = Goldencobra::Menue.find_by_title("AGB")
agb = Goldencobra::Menue.create!(title: "AGB", parent_id: footer.id, css_class: "", target: "/agb") if agb.blank?
contact = Goldencobra::Menue.find_by_title("Kontakt")
contact = Goldencobra::Menue.create!(title: "Kontakt", parent_id: footer.id, css_class: "", target: "/kontakt") if contact.blank?
impress = Goldencobra::Menue.find_by_title("Impressum")
impress = Goldencobra::Menue.create!(title: "Impressum", parent_id: footer.id, css_class: "", target: "/impressum") if impress.blank?

puts "footer menu created."

### START AND 404 PAGE ###
puts "create start page article..."
start = Goldencobra::Article.find_by_title("Willkommen")
start = Goldencobra::Article.create!(title: "Willkommen",breadcrumb:"Willkommen", article_type: "Default Show", ancestry: nil, active: true, url_name: "willkommen", template_file: "application") if start.blank?
start.mark_as_startpage!

### CONTENT PAGES ###
puts "create content page articles..."

newsblog = Goldencobra::Article.find_by_title("News")
newsblogContent = "<article>
    <h2><a href='/news'>News 1 &Uuml;berschrift</a></h2>
    <div class='article-date'>
      03. Januar 2013
    </div>
    <div>
        Erste Nachricht - Inhalt:<br/>Mehrere mehrere mehrere mehrere mehrere mehrere<br/>Zeilen Zeilen Zeilen Zeilen Zeilen!
        <p><a class='more' href='#'>weiterlesen</a></p>
    </div>
    <hr>
  </article>
  <article>
    <h2><a href='/news'>News 2 &Uuml;berschrift</a></h2>
    <div class='article-date'>
      01. Januar 2013
    </div>
    <div>
        Zweite Nachricht - Inhalt:<br/>Mehrere mehrere mehrere mehrere mehrere mehrere<br/>Zeilen Zeilen Zeilen Zeilen Zeilen!
        <p><a class='more' href='#'>weiterlesen</a></p>
    </div>
    <hr>
  </article>"
newsblog = Goldencobra::Article.create!(title: "News",breadcrumb:"News", article_type: "Default Show", ancestry: nil, active: true, content: newsblogContent, url_name: "news", template_file: "application") if newsblog.blank?

datestable = Goldencobra::Article.find_by_title("Termine")
datestableContent = "<table border='0'>
    <tbody>
      <tr>
        <td>Punkt1:</td>
        <td>Eins</td>
      </tr>
      <tr>
        <td>Punkt2:</td>
        <td>Zwei</td>
      </tr>
      <tr>
        <td>Punkt3:</td>
        <td>Drei</td>
      </tr>
      <tr>
        <td>Punkt4:</td>
        <td>Vier Vier Vier Vier<br/>&uuml;ber &uuml;ber &uuml;ber &uuml;ber<br/>mehrere mehrere mehrere mehrere<br/>Zeilen</td>
      </tr>
      <tr>
        <td>Punkt5:</td>
        <td>F&uuml;nf F&uuml;nf F&uuml;nf F&uuml;nf<br/>&uuml;ber &uuml;ber &uuml;ber &uuml;ber<br/>mehrere mehrere mehrere mehrere<br/>Zeilen</td>
      </tr>
    </tbody>
  </table>"
datestable = Goldencobra::Article.create!(title: "Termine",breadcrumb:"Termine", article_type: "Default Show", ancestry: nil, active: true, content: datestableContent, url_name: "termine", template_file: "application") if datestable.blank?

moreform = Goldencobra::Article.find_by_title("Weiteres")
moreformContent = "<form method='post' data-remote='true' action='/' accept-charset='UTF-8'>
    <div class='choice'>
      <ul>
        <li>
          <label class='' for='gender'>Anrede <span>*</span></label>
        </li>
        <li style='margin-left: 30px;'>
          <input type='radio' value='1' name='gender' id='gender_1'>
          <label for='gender_1'>Herr</label>
        </li>
        <li style='margin-left: 20px;'>
          <input type='radio' value='0' name='gender' id='gender_0'>
          <label for='gender_0'>Frau</label>
        </li>
      </ul>
    <br>
    </div>

    <label for='first_name'>Vorname <span>*</span></label>
    <input type='text' value='' name='first_name' id='first_name'><br>

    <label for='last_name'>Nachname <span>*</span></label>
    <input type='text' value='' name='last_name' id='last_name'><br>

    <label for='email'>E-Mail <span>*</span></label>
    <input type='text' value='' name='email' id='email'><br/>

    <input type='submit' value='Eintragen' name='commit'>
    <div class='clear'></div>
  </form>"
moreform = Goldencobra::Article.create!(title: "Weiteres",breadcrumb:"Weiteres", article_type: "Default Show", ancestry: nil, active: true, content: moreformContent, url_name: "weiteres", template_file: "application") if moreform.blank?

puts "content page articles created."

### DEFAULT SIDEBAR WIDGET ###
puts "create default sidebar widget..."

Goldencobra::Widget.delete_all
contactwidget = Goldencobra::Widget.find_by_title("Kontakt")
contactwidgetContent = "<h3>Allgemeine Kontaktinformationen</h3>
  <p>ikusei GmbH <br/>
    Zossener Str. 55-58<br/>
    10961 Berlin</p>
  <hr>
  <p>Telefon: +49 (0)30 - 7 55 66 75 2-0<br/>
    Telefax: +49 (0)30 - 7 55 66 75 2-9</p>
  <hr>
  <p><a href='mailto:info@ikusei.de'>info@ikusei.de</a></p>"
contactwidget = Goldencobra::Widget.create!(title: "Kontakt", active: true, content: contactwidgetContent, default: true) if contactwidget.blank?

puts "default sidebar widget created."