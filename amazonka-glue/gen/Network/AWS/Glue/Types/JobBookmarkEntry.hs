{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobBookmarkEntry
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.JobBookmarkEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Defines a point which a job can resume processing.
--
--
--
-- /See:/ 'jobBookmarkEntry' smart constructor.
data JobBookmarkEntry = JobBookmarkEntry'{_jbeJobName
                                          :: !(Maybe Text),
                                          _jbeRun :: !(Maybe Int),
                                          _jbeVersion :: !(Maybe Int),
                                          _jbeAttempt :: !(Maybe Int),
                                          _jbeJobBookmark :: !(Maybe Text)}
                          deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobBookmarkEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jbeJobName' - Name of the job in question.
--
-- * 'jbeRun' - The run ID number.
--
-- * 'jbeVersion' - Version of the job.
--
-- * 'jbeAttempt' - The attempt ID number.
--
-- * 'jbeJobBookmark' - The bookmark itself.
jobBookmarkEntry
    :: JobBookmarkEntry
jobBookmarkEntry
  = JobBookmarkEntry'{_jbeJobName = Nothing,
                      _jbeRun = Nothing, _jbeVersion = Nothing,
                      _jbeAttempt = Nothing, _jbeJobBookmark = Nothing}

-- | Name of the job in question.
jbeJobName :: Lens' JobBookmarkEntry (Maybe Text)
jbeJobName = lens _jbeJobName (\ s a -> s{_jbeJobName = a})

-- | The run ID number.
jbeRun :: Lens' JobBookmarkEntry (Maybe Int)
jbeRun = lens _jbeRun (\ s a -> s{_jbeRun = a})

-- | Version of the job.
jbeVersion :: Lens' JobBookmarkEntry (Maybe Int)
jbeVersion = lens _jbeVersion (\ s a -> s{_jbeVersion = a})

-- | The attempt ID number.
jbeAttempt :: Lens' JobBookmarkEntry (Maybe Int)
jbeAttempt = lens _jbeAttempt (\ s a -> s{_jbeAttempt = a})

-- | The bookmark itself.
jbeJobBookmark :: Lens' JobBookmarkEntry (Maybe Text)
jbeJobBookmark = lens _jbeJobBookmark (\ s a -> s{_jbeJobBookmark = a})

instance FromJSON JobBookmarkEntry where
        parseJSON
          = withObject "JobBookmarkEntry"
              (\ x ->
                 JobBookmarkEntry' <$>
                   (x .:? "JobName") <*> (x .:? "Run") <*>
                     (x .:? "Version")
                     <*> (x .:? "Attempt")
                     <*> (x .:? "JobBookmark"))

instance Hashable JobBookmarkEntry where

instance NFData JobBookmarkEntry where
