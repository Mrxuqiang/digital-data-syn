/*
================================================================================
��ṹ����:TB_GRTCE
��ṹ����:����ָ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCE;
drop table TB_GRTCE;
create table TB_GRTCE  (
   GRTCE_ID             INTEGER         NOT NULL,                      /*����ָ��ID         */   
   GRTCE001             VARCHAR2(20),                                  /*������           */   
   GRTCE002             VARCHAR2(20),                                  /*�к�               */   
   GRTCE003             VARCHAR2(20),                                  /*�к�               */
   GRTCE004             VARCHAR2(30),                                  /*ָ������           */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա           */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����       */                               
   CREATE_DATE          DATE,                                          /*��������           */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա           */
   MODI_DATE            DATE,                                          /*�޸�����           */
   FLAG                 NUMBER(1),                                     /*����״̬           */  
   constraint PK_TB_GRTCE primary key (GRTCE_ID)
);
create sequence SEQ_TB_GRTCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCE to public;
grant index  on TB_GRTCE to public;
grant update on TB_GRTCE to public; 
grant delete on TB_GRTCE to public;  
grant insert on TB_GRTCE to public; 
grant select on SEQ_TB_GRTCE to public; 