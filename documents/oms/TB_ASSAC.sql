/*
================================================================================
��ṹ����:TB_ASSAC
��ṹ����:�̶��ʲ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_ASSAC;
drop index AK_TB_ASSAC;
drop table TB_ASSAC;
create table TB_ASSAC  (
   ASSAC_ID             INTEGER                         not null,   /*��������ID            */
   ASSAC001             INTEGER                         not null,   /*����ID                 */
   ASSAC002             VARCHAR2(30)                    not null,   /*����                   */ 
   ASSAC003             DATE                            not null,   /*��������               */ 
   ASSAC004             INTEGER,                                    /*��Ӧ��ID               */
   ASSAC005             VARCHAR2(60),                               /*������Ӧ��             */  
   ASSAC006             INTEGER,                                    /*����ID                 */  
   ASSAC007             NUMBER(16,4),                               /*����                   */   
   ASSAC008             VARCHAR2(1),                                /*����״̬               */  
   ASSAC009             DATE,                                       /*¼������               */   
   ASSAC010             INTEGER,                                    /*¼����                 */ 
   ASSAC011             DATE,                                       /*�������               */ 
   ASSAC012             INTEGER,                                    /*�����                 */   
   ASSAC013             VARCHAR2(255),                              /*��ע                   */ 
   ASSAC014             INTEGER,                                    /*����ID                 */   
   ASSAC015             INTEGER,                                    /*Ա��ID                 */                            
   CREATE_USER          VARCHAR2(12),                               /*������Ա               */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����           */                               
   CREATE_DATE          DATE,                                       /*��������               */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա               */
   MODI_DATE            DATE,                                       /*�޸�����               */
   FLAG                 NUMBER(1),                                  /*����״̬               */
   constraint PK_TB_ASSAC primary key (ASSAC_ID)
);
create unique index AK_TB_ASSAC on TB_ASSAC (ASSAC001,ASSAC002);
create sequence SEQ_TB_ASSAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAC to public;
grant index  on TB_ASSAC to public;
grant update on TB_ASSAC to public; 
grant delete on TB_ASSAC to public;  
grant insert on TB_ASSAC to public; 
grant select on SEQ_TB_ASSAC to public;   