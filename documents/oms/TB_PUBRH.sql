/*
================================================================================
��ṹ����:TB_PUBRH
��ṹ����:���۷��ͷ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBRH;
drop index AK_TB_PUBRH;
drop table TB_PUBRH;
create table TB_PUBRH  (
   PUBRH_ID             INTEGER                         not null,  /*���۷��ͷ�ID          */
   PUBRH001             INTEGER                         not null,  /*�ⲿ������ID          */
   PUBRH002             INTEGER                         not null,  /*�ⲿ�����ʲ�����ID    */
   PUBRH003             VARCHAR2(255),                             /*ժҪ                  */
   PUBRH004             INTEGER                         not null,  /*��ƿ�ĿID            */
   PUBRH005             VARCHAR2(20) ,                             /*�����������ʶ          */
   PUBRH006             INTEGER,                                   /*����ID                */
   PUBRH007             VARCHAR2(1)                     not null,  /*����                  */
   PUBRH008             INTEGER                         not null,  /*��Ӧ��ĿID            */
   PUBRH009             VARCHAR2(20) ,                             /*��Ӧ���������ʶ        */
   PUBRH010             VARCHAR2(255),                             /*��ӦժҪ              */
   PUBRH011             INTEGER,                                   /*��Ӧ����ID            */  
   PUBRH012             VARCHAR2(1)                     not null,  /*��Ӧ����               */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_PUBRH primary key (PUBRH_ID)
);
create unique index AK_TB_PUBRH on TB_PUBRH (PUBRH001,PUBRH002,PUBRH004,PUBRH005);
create sequence SEQ_TB_PUBRH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRH to public;
grant index  on TB_PUBRH to public;
grant update on TB_PUBRH to public; 
grant delete on TB_PUBRH to public;  
grant insert on TB_PUBRH to public; 
grant select on SEQ_TB_PUBRH to public;   