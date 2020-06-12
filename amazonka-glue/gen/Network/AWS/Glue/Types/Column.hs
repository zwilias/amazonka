{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.Column
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.Column where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A column in a @Table@ .
--
--
--
-- /See:/ 'column' smart constructor.
data Column = Column'{_cType :: !(Maybe Text),
                      _cComment :: !(Maybe Text), _cName :: !Text}
                deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Column' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cType' - The datatype of data in the @Column@ .
--
-- * 'cComment' - Free-form text comment.
--
-- * 'cName' - The name of the @Column@ .
column
    :: Text -- ^ 'cName'
    -> Column
column pName_
  = Column'{_cType = Nothing, _cComment = Nothing,
            _cName = pName_}

-- | The datatype of data in the @Column@ .
cType :: Lens' Column (Maybe Text)
cType = lens _cType (\ s a -> s{_cType = a})

-- | Free-form text comment.
cComment :: Lens' Column (Maybe Text)
cComment = lens _cComment (\ s a -> s{_cComment = a})

-- | The name of the @Column@ .
cName :: Lens' Column Text
cName = lens _cName (\ s a -> s{_cName = a})

instance FromJSON Column where
        parseJSON
          = withObject "Column"
              (\ x ->
                 Column' <$>
                   (x .:? "Type") <*> (x .:? "Comment") <*>
                     (x .: "Name"))

instance Hashable Column where

instance NFData Column where

instance ToJSON Column where
        toJSON Column'{..}
          = object
              (catMaybes
                 [("Type" .=) <$> _cType,
                  ("Comment" .=) <$> _cComment,
                  Just ("Name" .= _cName)])
