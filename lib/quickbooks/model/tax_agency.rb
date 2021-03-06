module Quickbooks
  module Model
    class TaxAgency < BaseModel
      XML_COLLECTION_NODE = 'TaxAgency'.freeze
      XML_NODE            = 'TaxAgency'.freeze
      REST_RESOURCE       = 'taxagency'.freeze

      xml_accessor :id,                        from: 'Id'
      xml_accessor :sync_token,                from: 'SyncToken', as: Integer
      xml_accessor :meta_data,                 from: 'MetaData', as: MetaData
      xml_accessor :tax_tracked_on_purchases?, from: 'TaxTrackedOnPurchases'
      xml_accessor :tax_tracked_on_sales?,     from: 'TaxTrackedOnSales'
      xml_accessor :display_name,              from: 'DisplayName'
      xml_accessor :tax_registration_number,   from: 'TaxRegistrationNumber'

      validates_presence_of :display_name
    end
  end
end
