/*
================================================================================
��ṹ����:TB_GLDBA
��ṹ����:�ֽ��춯��ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GLDBA;
drop index AK_TB_GLDBA;
drop table TB_GLDBA;
create table TB_GLDBA  (
   GLDBA_ID             INTEGER                         not null,  /*�춯��ϸID           */
   GLDBA001             INTEGER,                                   /*����ID               */
   GLDBA002             INTEGER,                                   /*����ID               */
   GLDBA003             INTEGER,                                   /*����ID               */
   GLDBA004             VARCHAR2(30),                              /*����                 */
   GLDBA005             DATE,                                      /*�춯����             */
   GLDBA006             VARCHAR2(30),                              /*��������             */
   GLDBA007             INTEGER,                                   /*����ID               */
   GLDBA008             INTEGER,                                   /*�ֽ��춯��ID         */
   GLDBA009             INTEGER,                                   /*����ID               */   
   GLDBA010             INTEGER,                                   /*��ԱID               */
   GLDBA011             NUMBER(16,2),                              /*ԭ�ҽ��             */    
   GLDBA012             NUMBER(16,2),                              /*���ҽ��             */         
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_GLDBA primary key (GLDBA_ID)
);
create sequence SEQ_TB_GLDBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDBA to public;
grant index  on TB_GLDBA to public;
grant update on TB_GLDBA to public; 
grant delete on TB_GLDBA to public;  
grant insert on TB_GLDBA to public; 
grant select on SEQ_TB_GLDBA to public;   