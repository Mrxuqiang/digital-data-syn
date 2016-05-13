/*
================================================================================
��ṹ����:TB_SYSGC
��ṹ����:�ӿڹ����ֶζ�Ӧ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSGC;
drop index AK_TB_SYSGC;
drop table TB_SYSGC;
create table TB_SYSGC  (
   SYSGC_ID             INTEGER                         not null,  /*�ӿڹ����ֶζ�ӦID */
   SYSGC001             INTEGER                         not null,  /*�ӿڹ���ID         */
   SYSGC002             INTEGER                         not null,  /*�ӿڹ�����ӦID   */
   SYSGC003             VARCHAR2(30)                    not null,  /*���շ��ֶ���       */
   SYSGC004             VARCHAR2(2)                     not null,  /*���չ���           */
   SYSGC005             VARCHAR2(20)                    not null,  /*��Դ���ֶ���       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_SYSGC primary key (SYSGC_ID)
);
create unique index AK_TB_SYSGC on TB_SYSGC (SYSGC001,SYSGC002,SYSGC003);
create sequence SEQ_TB_SYSGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSGC to public;
grant index  on TB_SYSGC to public;
grant update on TB_SYSGC to public; 
grant delete on TB_SYSGC to public;  
grant insert on TB_SYSGC to public; 
grant select on SEQ_TB_SYSGC to public;   