{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KMS.Types.GrantConstraints
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.KMS.Types.GrantConstraints where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see <http://docs.aws.amazon.com/kms/latest/developerguide/encryption-context.html Encryption Context> in the /AWS Key Management Service Developer Guide/ .
--
--
-- Grant constraints apply only to operations that accept encryption context as input. For example, the @'DescribeKey' @ operation does not accept encryption context as input. A grant that allows the @DescribeKey@ operation does so regardless of the grant constraints. In constrast, the @'Encrypt' @ operation accepts encryption context as input. A grant that allows the @Encrypt@ operation does so only when the encryption context of the @Encrypt@ operation satisfies the grant constraints.
--
--
-- /See:/ 'grantConstraints' smart constructor.
data GrantConstraints = GrantConstraints'{_gcEncryptionContextEquals
                                          :: !(Maybe (Map Text Text)),
                                          _gcEncryptionContextSubset ::
                                          !(Maybe (Map Text Text))}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GrantConstraints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gcEncryptionContextEquals' - A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list, the grant allows the operation. Otherwise, the grant does not allow the operation.
--
-- * 'gcEncryptionContextSubset' - A list of key-value pairs, all of which must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list or is a superset of this list, the grant allows the operation. Otherwise, the grant does not allow the operation.
grantConstraints
    :: GrantConstraints
grantConstraints
  = GrantConstraints'{_gcEncryptionContextEquals =
                        Nothing,
                      _gcEncryptionContextSubset = Nothing}

-- | A list of key-value pairs that must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list, the grant allows the operation. Otherwise, the grant does not allow the operation.
gcEncryptionContextEquals :: Lens' GrantConstraints (HashMap Text Text)
gcEncryptionContextEquals = lens _gcEncryptionContextEquals (\ s a -> s{_gcEncryptionContextEquals = a}) . _Default . _Map

-- | A list of key-value pairs, all of which must be present in the encryption context of certain subsequent operations that the grant allows. When certain subsequent operations allowed by the grant include encryption context that matches this list or is a superset of this list, the grant allows the operation. Otherwise, the grant does not allow the operation.
gcEncryptionContextSubset :: Lens' GrantConstraints (HashMap Text Text)
gcEncryptionContextSubset = lens _gcEncryptionContextSubset (\ s a -> s{_gcEncryptionContextSubset = a}) . _Default . _Map

instance FromJSON GrantConstraints where
        parseJSON
          = withObject "GrantConstraints"
              (\ x ->
                 GrantConstraints' <$>
                   (x .:? "EncryptionContextEquals" .!= mempty) <*>
                     (x .:? "EncryptionContextSubset" .!= mempty))

instance Hashable GrantConstraints where

instance NFData GrantConstraints where

instance ToJSON GrantConstraints where
        toJSON GrantConstraints'{..}
          = object
              (catMaybes
                 [("EncryptionContextEquals" .=) <$>
                    _gcEncryptionContextEquals,
                  ("EncryptionContextSubset" .=) <$>
                    _gcEncryptionContextSubset])
