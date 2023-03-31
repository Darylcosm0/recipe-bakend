class AddResetPasswordTokenToPasswordResets < ActiveRecord::Migration[7.0]
  def change
    add_column :password_resets, :reset_password_token, :string
    add_index :password_resets, :reset_password_token
  end
end
