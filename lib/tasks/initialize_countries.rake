namespace :race_for_my_daughter do
  namespace :initialize do
    desc "Populate Countries table with data"
    task :populate_countries => [:environment] do
      ActionView::Helpers::FormOptionsHelper::COUNTRIES.each do |c|
        c = Country.new :name => c
        c.save!
      end
    end #task
  end
end
