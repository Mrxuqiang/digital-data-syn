/*
================================================================================
��ṹ����:TB_PUBBS
��ṹ����:Ա����ɷ�������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBBS;
drop index AK_TB_PUBBS;
drop table TB_PUBBS;
create table TB_PUBBS  (
   PUBBS_ID             INTEGER                         not null,  /*Ա����ɷ�����ID      */
   PUBBS001             INTEGER                         not null,  /*Ա��ID                */
   PUBBS002             DATE,                                      /*��������              */   
   PUBBS003             DATE,                                      /*��Ч����              */
   PUBBS004             DATE ,                                     /*ʧЧ����              */
   PUBBS005             VARCHAR2(255),                             /*��ע                  */   
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER,                                 /*����״̬           */
   constraint PK_TB_PUBBS primary key (PUBBS_ID)
);
create unique index AK_TB_PUBBS on TB_PUBBS (PUBBS001,PUBBS003,FLAG);
create sequence SEQ_TB_PUBBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBS to public;
grant index  on TB_PUBBS to public;
grant update on TB_PUBBS to public; 
grant delete on TB_PUBBS to public;  
grant insert on TB_PUBBS to public; 
grant select on SEQ_TB_PUBBS to public;   