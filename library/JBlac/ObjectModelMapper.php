<?php
/**
 * Description of JBlac_Model
 *
 * @author Innocent J Blac
 */
class JBlac_ObjectModelMapper
{
    private static $_db = null;
    /**
     *
     * @var type $_dbTable
     */
    protected $_dbTable;
    protected $_row;
    /*
    * The constructor
    */
    public function __construct($dbTable)
    {
        $this->setDbTable($dbTable);
    }

    /**
     * 
     * @param Zend_Db_Table_Abstract $dbTable
     * @return \JBlac_ObjectModelMapper
     * @throws Exception
     */
    public function setDbTable($dbTable)
    {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }
    /**
     * 
     * @return Zend_Db_Table_Abstract
     */
    public function getDbTable()
    {
        return $this->_dbTable;
    }
    /**
     * 
     * @return Zend_Db_Table
     */
    public function getDb(){
        if(is_null(self::$_db)){
            self::$_db = Zend_Db_Table::getDefaultAdapter();
        }
        
        return self::$_db;
    }
    
    public function delete($id){
        $this->_row = $this->getDbTable()->find($id)->current();
        $this->_row->delete();
    }    
}
