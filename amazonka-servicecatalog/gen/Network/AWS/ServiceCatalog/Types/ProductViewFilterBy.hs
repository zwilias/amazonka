{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ServiceCatalog.Types.ProductViewFilterBy
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ServiceCatalog.Types.ProductViewFilterBy where

import Network.AWS.Prelude
  
data ProductViewFilterBy = FullTextSearch
                         | Owner
                         | ProductType
                         | SourceProductId
                             deriving (Eq, Ord, Read, Show, Enum, Bounded, Data,
                                       Typeable, Generic)

instance FromText ProductViewFilterBy where
    parser = takeLowerText >>= \case
        "fulltextsearch" -> pure FullTextSearch
        "owner" -> pure Owner
        "producttype" -> pure ProductType
        "sourceproductid" -> pure SourceProductId
        e -> fromTextError $ "Failure parsing ProductViewFilterBy from value: '" <> e
           <> "'. Accepted values: fulltextsearch, owner, producttype, sourceproductid"

instance ToText ProductViewFilterBy where
    toText = \case
        FullTextSearch -> "FullTextSearch"
        Owner -> "Owner"
        ProductType -> "ProductType"
        SourceProductId -> "SourceProductId"

instance Hashable     ProductViewFilterBy
instance NFData       ProductViewFilterBy
instance ToByteString ProductViewFilterBy
instance ToQuery      ProductViewFilterBy
instance ToHeader     ProductViewFilterBy

instance ToJSON ProductViewFilterBy where
    toJSON = toJSONText
