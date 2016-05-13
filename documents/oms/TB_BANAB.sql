/*
================================================================================
��ṹ����:TB_BANAB
��ṹ����:���˱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BANAB;
drop index AK_TB_BANAB;
drop table TB_BANAB;
create table TB_BANAB  (
   BANAB_ID             INTEGER                         not null,  /*���˱�ID          */
   BANAB001             INTEGER                         not null,  /*�˻�ID            */
   BANAB002             DATE                            not null,  /*����              */
   BANAB003             INTEGER,                                   /*����ID            */
   BANAB004             VARCHAR2(30),                              /*���ݺ�           */
   BANAB005             VARCHAR2(1)                     not null,  /*�ո��ʽ        */
   BANAB006             VARCHAR2(255),                             /*ժҪ              */
   BANAB007             NUMBER(16,2),                              /*�跽              */
   BANAB008             NUMBER(16,2),                              /*����              */
   BANAB009             VARCHAR2(1) ,                              /*��Դ              */  
   BANAB010             VARCHAR2(1) ,                              /*�Ƿ񹴶�          */ 
   BANAB011             INTEGER ,                                  /*��ƺ�������       */
   BANAB012             INTEGER ,                                  /*��Դ����ID       */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_BANAB primary key (BANAB_ID)
);
create unique index AK_TB_BANAB on TB_BANAB (BANAB_ID,BANAB001,BANAB002,BANAB004,BANAB005);
create sequence SEQ_TB_BANAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BANAB to public;
grant index  on TB_BANAB to public;
grant update on TB_BANAB to public; 
grant delete on TB_BANAB to public;  
grant insert on TB_BANAB to public; 
grant select on SEQ_TB_BANAB to public;   