{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.Contact
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.AlexaBusiness.Types.Contact where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A contact with attributes.
--
--
--
-- /See:/ 'contact' smart constructor.
data Contact = Contact'{_cLastName :: !(Maybe Text),
                        _cContactARN :: !(Maybe Text),
                        _cPhoneNumber :: !(Maybe Text),
                        _cFirstName :: !(Maybe Text),
                        _cDisplayName :: !(Maybe Text)}
                 deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Contact' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cLastName' - The last name of the contact, used to call the contact on the device.
--
-- * 'cContactARN' - The ARN of the contact.
--
-- * 'cPhoneNumber' - The phone number of the contact.
--
-- * 'cFirstName' - The first name of the contact, used to call the contact on the device.
--
-- * 'cDisplayName' - The name of the contact to display on the console.
contact
    :: Contact
contact
  = Contact'{_cLastName = Nothing,
             _cContactARN = Nothing, _cPhoneNumber = Nothing,
             _cFirstName = Nothing, _cDisplayName = Nothing}

-- | The last name of the contact, used to call the contact on the device.
cLastName :: Lens' Contact (Maybe Text)
cLastName = lens _cLastName (\ s a -> s{_cLastName = a})

-- | The ARN of the contact.
cContactARN :: Lens' Contact (Maybe Text)
cContactARN = lens _cContactARN (\ s a -> s{_cContactARN = a})

-- | The phone number of the contact.
cPhoneNumber :: Lens' Contact (Maybe Text)
cPhoneNumber = lens _cPhoneNumber (\ s a -> s{_cPhoneNumber = a})

-- | The first name of the contact, used to call the contact on the device.
cFirstName :: Lens' Contact (Maybe Text)
cFirstName = lens _cFirstName (\ s a -> s{_cFirstName = a})

-- | The name of the contact to display on the console.
cDisplayName :: Lens' Contact (Maybe Text)
cDisplayName = lens _cDisplayName (\ s a -> s{_cDisplayName = a})

instance FromJSON Contact where
        parseJSON
          = withObject "Contact"
              (\ x ->
                 Contact' <$>
                   (x .:? "LastName") <*> (x .:? "ContactArn") <*>
                     (x .:? "PhoneNumber")
                     <*> (x .:? "FirstName")
                     <*> (x .:? "DisplayName"))

instance Hashable Contact where

instance NFData Contact where
