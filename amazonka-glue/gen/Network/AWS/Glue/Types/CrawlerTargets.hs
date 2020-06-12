{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.CrawlerTargets
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.CrawlerTargets where

import Network.AWS.Glue.Types.JdbcTarget
import Network.AWS.Glue.Types.S3Target
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies data stores to crawl.
--
--
--
-- /See:/ 'crawlerTargets' smart constructor.
data CrawlerTargets = CrawlerTargets'{_ctS3Targets ::
                                      !(Maybe [S3Target]),
                                      _ctJdbcTargets :: !(Maybe [JdbcTarget])}
                        deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CrawlerTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ctS3Targets' - Specifies Amazon S3 targets.
--
-- * 'ctJdbcTargets' - Specifies JDBC targets.
crawlerTargets
    :: CrawlerTargets
crawlerTargets
  = CrawlerTargets'{_ctS3Targets = Nothing,
                    _ctJdbcTargets = Nothing}

-- | Specifies Amazon S3 targets.
ctS3Targets :: Lens' CrawlerTargets [S3Target]
ctS3Targets = lens _ctS3Targets (\ s a -> s{_ctS3Targets = a}) . _Default . _Coerce

-- | Specifies JDBC targets.
ctJdbcTargets :: Lens' CrawlerTargets [JdbcTarget]
ctJdbcTargets = lens _ctJdbcTargets (\ s a -> s{_ctJdbcTargets = a}) . _Default . _Coerce

instance FromJSON CrawlerTargets where
        parseJSON
          = withObject "CrawlerTargets"
              (\ x ->
                 CrawlerTargets' <$>
                   (x .:? "S3Targets" .!= mempty) <*>
                     (x .:? "JdbcTargets" .!= mempty))

instance Hashable CrawlerTargets where

instance NFData CrawlerTargets where

instance ToJSON CrawlerTargets where
        toJSON CrawlerTargets'{..}
          = object
              (catMaybes
                 [("S3Targets" .=) <$> _ctS3Targets,
                  ("JdbcTargets" .=) <$> _ctJdbcTargets])
