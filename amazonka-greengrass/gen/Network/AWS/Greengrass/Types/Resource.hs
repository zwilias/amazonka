{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.Resource
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Greengrass.Types.Resource where

import Network.AWS.Greengrass.Types.ResourceDataContainer
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about a resource.
--
-- /See:/ 'resource' smart constructor.
data Resource = Resource'{_rResourceDataContainer ::
                          !(Maybe ResourceDataContainer),
                          _rName :: !(Maybe Text), _rId :: !(Maybe Text)}
                  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Resource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rResourceDataContainer' - A container of data for all resource types.
--
-- * 'rName' - The descriptive resource name, which is displayed on the Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
--
-- * 'rId' - The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
resource
    :: Resource
resource
  = Resource'{_rResourceDataContainer = Nothing,
              _rName = Nothing, _rId = Nothing}

-- | A container of data for all resource types.
rResourceDataContainer :: Lens' Resource (Maybe ResourceDataContainer)
rResourceDataContainer = lens _rResourceDataContainer (\ s a -> s{_rResourceDataContainer = a})

-- | The descriptive resource name, which is displayed on the Greengrass console. Max length 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
rName :: Lens' Resource (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | The resource ID, used to refer to a resource in the Lambda function configuration. Max length is 128 characters with pattern ''[a-zA-Z0-9:_-]+''. This must be unique within a Greengrass group.
rId :: Lens' Resource (Maybe Text)
rId = lens _rId (\ s a -> s{_rId = a})

instance FromJSON Resource where
        parseJSON
          = withObject "Resource"
              (\ x ->
                 Resource' <$>
                   (x .:? "ResourceDataContainer") <*> (x .:? "Name")
                     <*> (x .:? "Id"))

instance Hashable Resource where

instance NFData Resource where

instance ToJSON Resource where
        toJSON Resource'{..}
          = object
              (catMaybes
                 [("ResourceDataContainer" .=) <$>
                    _rResourceDataContainer,
                  ("Name" .=) <$> _rName, ("Id" .=) <$> _rId])
