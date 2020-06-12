{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.JobTemplate
-- Copyright   : (c) 2013-2018 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.MediaConvert.Types.JobTemplate where

import Network.AWS.Lens
import Network.AWS.MediaConvert.Types.JobTemplateSettings
import Network.AWS.MediaConvert.Types.Type
import Network.AWS.Prelude

-- | A job template is a pre-made set of encoding instructions that you can use to quickly create a job.
--
-- /See:/ 'jobTemplate' smart constructor.
data JobTemplate = JobTemplate'{_jtLastUpdated ::
                                !(Maybe POSIX),
                                _jtSettings :: !(Maybe JobTemplateSettings),
                                _jtARN :: !(Maybe Text),
                                _jtCreatedAt :: !(Maybe POSIX),
                                _jtCategory :: !(Maybe Text),
                                _jtQueue :: !(Maybe Text),
                                _jtName :: !(Maybe Text),
                                _jtType :: !(Maybe Type),
                                _jtDescription :: !(Maybe Text)}
                     deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'JobTemplate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'jtLastUpdated' - The timestamp in epoch seconds when the Job template was last updated.
--
-- * 'jtSettings' - Undocumented member.
--
-- * 'jtARN' - An identifier for this resource that is unique within all of AWS.
--
-- * 'jtCreatedAt' - The timestamp in epoch seconds for Job template creation.
--
-- * 'jtCategory' - An optional category you create to organize your job templates.
--
-- * 'jtQueue' - Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
--
-- * 'jtName' - A name you create for each job template. Each name must be unique within your account.
--
-- * 'jtType' - A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user.
--
-- * 'jtDescription' - An optional description you create for each job template.
jobTemplate
    :: JobTemplate
jobTemplate
  = JobTemplate'{_jtLastUpdated = Nothing,
                 _jtSettings = Nothing, _jtARN = Nothing,
                 _jtCreatedAt = Nothing, _jtCategory = Nothing,
                 _jtQueue = Nothing, _jtName = Nothing,
                 _jtType = Nothing, _jtDescription = Nothing}

-- | The timestamp in epoch seconds when the Job template was last updated.
jtLastUpdated :: Lens' JobTemplate (Maybe UTCTime)
jtLastUpdated = lens _jtLastUpdated (\ s a -> s{_jtLastUpdated = a}) . mapping _Time

-- | Undocumented member.
jtSettings :: Lens' JobTemplate (Maybe JobTemplateSettings)
jtSettings = lens _jtSettings (\ s a -> s{_jtSettings = a})

-- | An identifier for this resource that is unique within all of AWS.
jtARN :: Lens' JobTemplate (Maybe Text)
jtARN = lens _jtARN (\ s a -> s{_jtARN = a})

-- | The timestamp in epoch seconds for Job template creation.
jtCreatedAt :: Lens' JobTemplate (Maybe UTCTime)
jtCreatedAt = lens _jtCreatedAt (\ s a -> s{_jtCreatedAt = a}) . mapping _Time

-- | An optional category you create to organize your job templates.
jtCategory :: Lens' JobTemplate (Maybe Text)
jtCategory = lens _jtCategory (\ s a -> s{_jtCategory = a})

-- | Optional. The queue that jobs created from this template are assigned to. If you don't specify this, jobs will go to the default queue.
jtQueue :: Lens' JobTemplate (Maybe Text)
jtQueue = lens _jtQueue (\ s a -> s{_jtQueue = a})

-- | A name you create for each job template. Each name must be unique within your account.
jtName :: Lens' JobTemplate (Maybe Text)
jtName = lens _jtName (\ s a -> s{_jtName = a})

-- | A job template can be of two types: system or custom. System or built-in job templates can't be modified or deleted by the user.
jtType :: Lens' JobTemplate (Maybe Type)
jtType = lens _jtType (\ s a -> s{_jtType = a})

-- | An optional description you create for each job template.
jtDescription :: Lens' JobTemplate (Maybe Text)
jtDescription = lens _jtDescription (\ s a -> s{_jtDescription = a})

instance FromJSON JobTemplate where
        parseJSON
          = withObject "JobTemplate"
              (\ x ->
                 JobTemplate' <$>
                   (x .:? "lastUpdated") <*> (x .:? "settings") <*>
                     (x .:? "arn")
                     <*> (x .:? "createdAt")
                     <*> (x .:? "category")
                     <*> (x .:? "queue")
                     <*> (x .:? "name")
                     <*> (x .:? "type")
                     <*> (x .:? "description"))

instance Hashable JobTemplate where

instance NFData JobTemplate where
