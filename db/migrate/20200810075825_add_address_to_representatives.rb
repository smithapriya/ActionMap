# frozen_string_literal: true

class AddAddressToRepresentatives < ActiveRecord::Migration[5.2]
    def change
        add_column :representatives, :address, :string, array: true
    end
end
