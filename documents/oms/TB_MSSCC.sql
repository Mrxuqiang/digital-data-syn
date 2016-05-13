/*
================================================================================
��ṹ����:TB_MSSCC
��ṹ����:��Ʒ���������
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_MSSCC;
drop index AK_TB_MSSCC;
drop table TB_MSSCC;
create table TB_MSSCC  (
   MSSCC_ID             INTEGER                         not null,  /*��Ʒ���������ID*/
   MSSCC001             INTEGER                         not null,  /*��ƷID          */
   MSSCC002             VARCHAR2(40),                              /*������          */
   MSSCC003             VARCHAR2(100),                             /*Ʒ��            */
   MSSCC004             VARCHAR2(80),                              /*�ͺţ�ԭ��      */ 
   MSSCC005             VARCHAR2(80),                              /*�ͺţ��ģ�      */  
   MSSCC006             VARCHAR2(80),                              /*���ԭ��      */  
   MSSCC007             VARCHAR2(80),                              /*��񣨸ģ�      */  
   MSSCC008             VARCHAR2(2),                               /*���λ        */  
   MSSCC009             VARCHAR2(100),                             /*���ģ�ԭ��MSSCA035      */  
   MSSCC010             VARCHAR2(100),                             /*���ģ��ģ�      */  
   MSSCC011             VARCHAR2(100),                             /*���棨ԭ��MSSCA035      */  
   MSSCC012             VARCHAR2(100),                             /*���棨�ģ�      */ 
   MSSCC013             VARCHAR2(100),                             /*���ģ�ԭ��MSSCA035      */ 
   MSSCC014             VARCHAR2(100),			                       /*���ģ��ģ�      */ 
   MSSCC015             VARCHAR2(100),                             /*��Ҫ���ϣ�ԭ��MSSCA035 ���ֶ�  */ 
   MSSCC016             VARCHAR2(100),                             /*��Ҫ���ϣ��ģ�  */ 
   MSSCC017             VARCHAR2(100),                             /*��ɫ            */    
   MSSCC018             Integer,                                   /*�Ƽ۵�λID      */  
   MSSCC019             VARCHAR2(60),                              /*�ȼ�            */  
   MSSCC020             number(9,2),                               /*����ָ����      */ 
   MSSCC021             INTEGER,                                   /*����id          */    
   MSSCC022             VARCHAR2(1000),                            /*��ע            */  
   MSSCC023             VARCHAR2(1000),                            /*�����ظ����    */
   MSSCC024             VARCHAR2(1),                               /*״̬ 1.Ĭ��״̬ 0.�ܾ���� */  
   MSSCC025             Integer,                                   /*Ӫ����֯ID      */ 
   MSSCC026             Integer,                                   /*��ɫID          */ 
   MSSCC027             VARCHAR2(50),                               /*��ϵ��         */
   MSSCC028             VARCHAR2(50),                               /*��ϵ�绰	     */
   MSSCC029             DATE,                                       /*¼������       */
   MSSCC030             VARCHAR2(1),                                /*���״̬�� ��ȫ���0 ���ֱ��1     */
   MSSCC031             DATE,                                       /*��������        */
   MSSCC032             varchar2(50),                               /*������ϵ��      */
   MSSCC033             varchar2(50),                               /*������ϵ�绰    */
   MSSCC034             varchar2(1000),                             /*Ԥ��034         */
   MSSCC035             varchar2(1000),                             /*Ԥ��035         */
   MSSCC036             INTEGER                         ,           /*������Ʒ��ϢID     */
   MSSCC037             INTEGER                         ,           /*�汾��             */
   MSSCC038             INTEGER,                                    /*�Զ������1(������) ��һ��          */  
   MSSCC039             INTEGER,                                    /*�Զ������2(����) (��)           */  
   MSSCC040             INTEGER,                                    /*�Զ������3(�����) �������          */  
   MSSCC041             INTEGER,                                    /*�Զ������4(������) ���ģ�        */  
   MSSCC042             INTEGER,                                    /*�Զ������5(��Ʒ������)           */  
   MSSCC043             INTEGER,                                    /*�Զ������6 �ռ���           */  
   MSSCC044             INTEGER,                                    /*�Զ������7           */ 
   MSSCC045             INTEGER,                                    /*�Զ������8          */
   MSSCC046             INTEGER                         ,           /*ϵ��ID              */
   MSSCC047             Integer,                                    /*������ID           */
   MSSCC048             Integer,                                    /*Ʒ��ID           */ 
   MSSCC049             Integer,                                    /*����ID           */ 
   MSSCC050             Integer,                                     /*������֯ID           */
   MSSCC051             Integer,                                     /*������ (��)           */
   MSSCC052             VARCHAR2(100),                               /*Ʒ��(��)            */
   MSSCC053             VARCHAR2(2),                                 /*���λ(��)        */
   MSSCC054             VARCHAR2(100),                               /*��ɫ (��)           */
   MSSCC055             Integer,                                     /*�Ƽ۵�λID (��)     */ 
   MSSCC056             VARCHAR2(60),                                /*�ȼ� (��)           */
   MSSCC057             number(9,2),                                 /*����ָ����(��)      */ 
   MSSCC058             INTEGER,                                     /*����id(��)          */
   MSSCC059             varchar2(2),                                 /*�Ƿ�Ϊ�Ҿ�          */
   CREATE_USER          VARCHAR2(12),                               /*������Ա           */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����       */                               
   CREATE_DATE          DATE,                                       /*��������           */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա           */
   MODI_DATE            DATE,                                       /*�޸�����           */
   FLAG                 NUMBER,                                     /*����״̬           */
   constraint PK_TB_MSSCC primary key (MSSCC_ID)
);
create unique index AK_TB_MSSCC on TB_MSSCC(MSSCC031,MSSCC032,FLAG);
create sequence SEQ_TB_MSSCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MSSCC to public;
grant index  on TB_MSSCC to public;
grant update on TB_MSSCC to public; 
grant delete on TB_MSSCC to public;  
grant insert on TB_MSSCC to public;  
grant select on SEQ_TB_MSSCC to public;   
