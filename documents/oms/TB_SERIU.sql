20140724 CREATE BY SUNDAN


/*
================================================================================
��ṹ����:TB_SERIU
��ṹ����:BOM���ӱ�
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERIU;
drop index AK_TB_SERIU;
drop table TB_SERIU;
create table TB_SERIU  (
   SERIU_ID             INTEGER                         not null,  /*BOM���ӱ�ID             */
   SERIU001             INTEGER				                  not null,  /*BOM������id           */
   SERIU002             INTEGER                         not null,  /*��ǩID        */
   SERIU003             INTEGER,                                   /*��ͬID        */
   SERIU004             INTEGER,                                   /*��ƷID         */ 
   SERIU005             VARCHAR2(80),                              /*��Ʒ����         */ 
   SERIU006             VARCHAR2(80),                              /*�ͺ�         */     
   SERIU007             VARCHAR2(80),                              /*���         */ 
   SERIU008             VARCHAR2(2),                               /*���λ        */  
   SERIU009             VARCHAR2(60),                              /*����/����           */  
   SERIU010             VARCHAR2(60),                              /*����           */   
   SERIU011             VARCHAR2(60),                              /*����           */ 
   SERIU012             INTEGER,                                   /*�ȼ�ID           */ 
   SERIU013             NUMBER(22,2),                              /*�ۼ�           */
   SERIU014             VARCHAR2(80),                              /*�ȼ�����             */   
   SERIU015             VARCHAR2(80),                              /*����             */ 
   SERIU016             VARCHAR2(255),                             /*��Ҫ����             */ 
   SERIU017             VARCHAR2(255),                             /*��ɫ             */ 
   SERIU018             INTEGER,                                   /*��λID           */
   SERIU019             INTEGER,                                   /*չλID           */
   SERIU020             VARCHAR2(1),                               /*����ʵ��           */
   SERIU021             VARCHAR2(30),                              /*��Ʒ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_SERIU primary key (SERIU_ID)
);
create unique index AK_TB_SERIU on TB_SERIU (SERIU001,SERIU002);
create sequence SEQ_TB_SERIU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIU to public;
grant index  on TB_SERIU to public;
grant update on TB_SERIU to public; 
grant delete on TB_SERIU to public;  
grant insert on TB_SERIU to public; 
grant select on SEQ_TB_SERIU to public;   