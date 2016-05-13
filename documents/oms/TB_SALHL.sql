/*
================================================================================
��ṹ����:TB_SALHL
��ṹ����:�����ض������趨��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHL;
drop index AK_TB_SALHL;
drop table TB_SALHL;
create table TB_SALHL  (
   SALHL_ID             INTEGER                         not null,  /*�����ض������趨id */
   SALHL001             INTEGER                         not null,  /*���۵�ID           */
   SALHL002             INTEGER                         not null,  /*���۵���Ʒ��ϸID   */
   SALHL003             INTEGER                         not null,  /*�ض����Է���       */
   SALHL004             INTEGER                         not null,  /*�ض���������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER ,                                   /*����״̬           */
   constraint PK_TB_SALHL primary key (SALHL_ID)
);
create unique index AK_TB_SALHL on TB_SALHL (SALHL002,SALHL003,FLAG);
create sequence SEQ_TB_SALHL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHL to public;
grant index  on TB_SALHL to public;
grant update on TB_SALHL to public; 
grant delete on TB_SALHL to public;  
grant insert on TB_SALHL to public; 
grant select on SEQ_TB_SALHL to public;   