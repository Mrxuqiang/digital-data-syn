/*
================================================================================
��ṹ����:TB_DRPCE
��ṹ����:����ָ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCE;
drop table TB_DRPCE;
create table TB_DRPCE  (
   DRPCE_ID             INTEGER         NOT NULL,                      /*����ָ��ID         */   
   DRPCE001             VARCHAR2(20),                                  /*������           */   
   DRPCE002             VARCHAR2(20),                                  /*�к�               */   
   DRPCE003             VARCHAR2(20),                                  /*�к�               */
   DRPCE004             VARCHAR2(30),                                  /*ָ������           */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա           */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����       */                               
   CREATE_DATE          DATE,                                          /*��������           */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա           */
   MODI_DATE            DATE,                                          /*�޸�����           */
   FLAG                 NUMBER(1),                                     /*����״̬           */  
   constraint PK_TB_DRPCE primary key (DRPCE_ID)
);
create sequence SEQ_TB_DRPCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCE to public;
grant index  on TB_DRPCE to public;
grant update on TB_DRPCE to public; 
grant delete on TB_DRPCE to public;  
grant insert on TB_DRPCE to public; 
grant select on SEQ_TB_DRPCE to public; 