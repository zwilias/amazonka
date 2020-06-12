{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glue.Types.JobCommand
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.Glue.Types.JobCommand where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies code executed when a job is run.
--
--
--
-- /See:/ 'jobCommand' smart constructor.
data JobCommand = JobCommand'{_jobScriptLocation ::
                              !(Maybe Text),
                              _jobName :: !(Maybe Text)}
                    deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jobScriptLocation' - Specifies the S3 path to a script that executes a job (required).
--
-- * 'jobName' - The name of the job command: this must be @glueetl@ .
jobCommand
    :: JobCommand
jobCommand
  = JobCommand'{_jobScriptLocation = Nothing,
                _jobName = Nothing}

-- | Specifies the S3 path to a script that executes a job (required).
jobScriptLocation :: Lens' JobCommand (Maybe Text)
jobScriptLocation = lens _jobScriptLocation (\ s a -> s{_jobScriptLocation = a})

-- | The name of the job command: this must be @glueetl@ .
jobName :: Lens' JobCommand (Maybe Text)
jobName = lens _jobName (\ s a -> s{_jobName = a})

instance FromJSON JobCommand where
        parseJSON
          = withObject "JobCommand"
              (\ x ->
                 JobCommand' <$>
                   (x .:? "ScriptLocation") <*> (x .:? "Name"))

instance Hashable JobCommand where

instance NFData JobCommand where

instance ToJSON JobCommand where
        toJSON JobCommand'{..}
          = object
              (catMaybes
                 [("ScriptLocation" .=) <$> _jobScriptLocation,
                  ("Name" .=) <$> _jobName])
