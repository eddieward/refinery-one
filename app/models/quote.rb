class Quote < ActiveRecord::Base

  # will_paginate
  cattr_reader :per_page
  @@per_page = 10


  validates :name, :presence => true
  validates :email, :presence => true
  validates :email, :format=> {:with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i}


end