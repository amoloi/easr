<?php

class Projects_Model_ProjectMapper extends JBlac_ObjectModelMapper
{
    public function save(Projects_Model_Project $objEntity)
    {
        $data = [
            'id'                =>  $objEntity->getId(),
            'number'            =>  $objEntity->getNumber(),
            'name'              =>  $objEntity->getName(),
            'description'       =>  $objEntity->getDescription(),
            'tasks'             =>  $objEntity->getTasks(), 
            'status'            =>  $objEntity->getStatus(), 
            'applicationId'     =>  $objEntity->getApplicationId(),
            'startDate'         =>  $objEntity->getStartDate(),
            'endDate'           =>  $objEntity->getEndDate(),
        ];
        if (null === ($id = $objEntity->getId())) {
            unset($data['id']);
            $data['createdBy'] = $objEntity->getCreatedBy();
            $data['createdOn'] = date('Y-m-d H:i:s');
            try {
              $newId =  $this->getDbTable()->insert($data);
              $objEntity->setId($newId);
              return $objEntity->getId();
            } catch (Exception $exc) {
                echo $exc->getMessage();
            }

            
        } else {

            $data['modifiedBy'] = $objEntity->getModifiedBy();
            $data['modifiedOn'] = date('Y-m-d H:i:s');            
            $this->getDbTable()->update($data, ['id = ?' => $id]);
        }
    }

    public function find($id, Projects_Model_Project $objEntity)
    {
        $result = $this->getDbTable()->find($id);
        if (0 == count($result)) {
            return;
        }
        $row = $result->current();
        $objEntity->setId($row->id)
                  ->setNumber($row->number)
                  ->setName($row->name)
                  ->setDescription($row->description)
                  ->setTasks($row->tasks)
                  ->setStatus($row->status)
                  ->setApplicationId($row->applicationId)
                  ->setStartDate($row->startDate)
                  ->setEndDate($row->endDate)
                ->setResolutionStatus($row->resolutionStatus);        
        return $row;
    }
    public function fetchOne($id, Projects_Model_Project $objEntity)
    {
        $select = $this->getDbTable()->select()->from('projects', [
                    'id',
                    'number',
                    'name',
                    'description',
                    'tasks',
                    'status',
                    'applicationId',
                    'DATE_FORMAT(startDate , \'%d/%m/%Y\') as startDate',
                    'DATE_FORMAT(endDate , \'%d/%m/%Y\') as endDate',
                    'resolutionStatus',
                    'createdBy',
                    'createdOn',
                    'modifiedBy',
                    'modifiedOn',
                    ])->where('id = ?' , $id);
        
        $results = $select->query()->fetch();
        $row = $results;
        $objEntity->setId($row['id'])
                  ->setNumber($row['number'])
                  ->setName($row['name'])
                  ->setDescription($row['description'])
                  ->setTasks($row['tasks'])
                  ->setStatus($row['status'])
                  ->setApplicationId($row['applicationId'])
                  ->setStartDate($row['startDate'])
                  ->setEndDate($row['endDate'])
                  ->setResolutionStatus($row['resolutionStatus'])
                  ->setCreatedBy($row['createdBy'])
                  ->setCreatedOn($row['createdOn'])
                  ->setModifiedBy($row['modifiedBy'])
                  ->setModifiedOn($row['modifiedOn']);
        
        return $row;
    }
    
    public function fetchAll()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        $entries   = array();
        foreach ($resultSet as $row) {
            $entry = new Projects_Model_Project();
            $entry->setId($row->buyerId)
                  ->setNumber($row->number)
                  ->setName($row->name)
                  ->setDescription($row->description)
                  ->setTasks($row->tasks)
                  ->setStatus($row->status)
                  ->setApplicationId($row->applicationId)
                  ->setStartDate($row->startDate)
                  ->setEndDate($row->endDate)
                  ->setResolutionStatus($row->resolutionStatus)
                  ->setCreatedBy($row->createdBy)
                  ->setCreatedOn($row->createdOn)
                  ->setModifiedBy($row->modifiedBy)
                  ->setModifiedOn($row->modifiedOn);
            $entries[] = $entry;
        }
        return $entries;
    }
    public function fetchArray()
    {
        $resultSet = $this->getDbTable()->fetchAll();
        return $resultSet;
    }
    public function fetchPage($page)
    {
        /*
        * Object of Zend_Paginator
        */
        $paginator = Zend_Paginator::factory($this->fetchArray());
        /*
        * Set the number of counts in a page
        */
        $paginator->setItemCountPerPage(5);
        /*
        * Set the current page number
        */
        $paginator->setCurrentPageNumber($page);
        /*
        * Assign to view
        */
        
        return $paginator;
    }
public static function fetchProjectsLOV()
    {
        $db = Zend_Db_Table::getDefaultAdapter();
        $select = $db->select()->from('projects_lov_v')
                    ->where('value IS NOT NULL');

        $results = $select->query()->fetchAll();

        if (0 == count($results)) {
            return [];
        }
        $entities = [];
        foreach ($results as $row) {
            $entities[$row['value']] = $row['label'];
        }        
        return $entities;
    }     
}