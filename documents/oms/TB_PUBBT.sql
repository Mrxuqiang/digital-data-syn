/*
================================================================================
��ṹ����:TB_PUBBT
��ṹ����:Ա����ɷ����ӱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBT;
drop index AK_TB_PUBBT;
drop table TB_PUBBT;
create table TB_PUBBT  (
   PUBBT_ID             INTEGER                         not null,  /*Ա����ɷ�����ID       */
   PUBBT001             INTEGER                         not null,  /*Ա����ɷ�����ID       */
   PUBBT002             INTEGER,                                   /*Ա��ID                */
   PUBBT003             NUMBER(4,2) ,                              /*�����               */   
   PUBBT004             VARCHAR2(255),                             /*��ע                 */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                    /*����״̬           */
   constraint PK_TB_PUBBT primary key (PUBBT_ID)
);
create unique index AK_TB_PUBBT on TB_PUBBT (PUBBT001,PUBBT002,FLAG);
create sequence SEQ_TB_PUBBT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBT to public;
grant index  on TB_PUBBT to public;
grant update on TB_PUBBT to public; 
grant delete on TB_PUBBT to public;  
grant insert on TB_PUBBT to public; 
grant select on SEQ_TB_PUBBT to public;   