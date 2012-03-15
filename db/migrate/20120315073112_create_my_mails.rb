class CreateMyMails < ActiveRecord::Migration
  def change
    create_table :my_mails do |t|
      t.string :mailm

      t.timestamps
    end
  end
end
