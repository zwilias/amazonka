{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ResourceGroups.Types.ResourceQuery
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.ResourceGroups.Types.ResourceQuery where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.ResourceGroups.Types.QueryType

-- | The query that is used to define a resource group or a search for resources.
--
--
--
-- /See:/ 'resourceQuery' smart constructor.
data ResourceQuery = ResourceQuery'{_rqType ::
                                    !QueryType,
                                    _rqSearchQuery :: !Text}
                       deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ResourceQuery' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rqType' - The type of the query. The valid value in this release is @TAG_FILTERS_1_0@ . /@TAG_FILTERS_1_0:@ / A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API GetResources operation. When more than one element is present, only resources that match all filters are part of the result. If a filter specifies more than one value for a key, a resource matches the filter if its tag value matches any of the specified values.
--
-- * 'rqSearchQuery' - The query that defines a group or a search.
resourceQuery
    :: QueryType -- ^ 'rqType'
    -> Text -- ^ 'rqSearchQuery'
    -> ResourceQuery
resourceQuery pType_ pSearchQuery_
  = ResourceQuery'{_rqType = pType_,
                   _rqSearchQuery = pSearchQuery_}

-- | The type of the query. The valid value in this release is @TAG_FILTERS_1_0@ . /@TAG_FILTERS_1_0:@ / A JSON syntax that lets you specify a collection of simple tag filters for resource types and tags, as supported by the AWS Tagging API GetResources operation. When more than one element is present, only resources that match all filters are part of the result. If a filter specifies more than one value for a key, a resource matches the filter if its tag value matches any of the specified values.
rqType :: Lens' ResourceQuery QueryType
rqType = lens _rqType (\ s a -> s{_rqType = a})

-- | The query that defines a group or a search.
rqSearchQuery :: Lens' ResourceQuery Text
rqSearchQuery = lens _rqSearchQuery (\ s a -> s{_rqSearchQuery = a})

instance FromJSON ResourceQuery where
        parseJSON
          = withObject "ResourceQuery"
              (\ x ->
                 ResourceQuery' <$> (x .: "Type") <*> (x .: "Query"))

instance Hashable ResourceQuery where

instance NFData ResourceQuery where

instance ToJSON ResourceQuery where
        toJSON ResourceQuery'{..}
          = object
              (catMaybes
                 [Just ("Type" .= _rqType),
                  Just ("Query" .= _rqSearchQuery)])
