class AddAgencyServiceOfferingAssociation < ActiveRecord::Migration[5.0]
  def change
    create_table :agencies_service_offerings, id: false do |t|
      t.belongs_to :agency, index: true
      t.belongs_to :service_offering, index: true
    end
  end
end
