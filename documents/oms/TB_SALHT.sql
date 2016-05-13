 /*
================================================================================
��ṹ����:TB_SALHT
��ṹ����:�����ض������趨��
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SALHT;
drop index AK_TB_SALHT;
drop table TB_SALHT;
create table TB_SALHT  (
   SALHT_ID             INTEGER                         not null,  /*�����ض������趨id */
   SALHT001             INTEGER                         not null,  /*���۵�ID           */
   SALHT002             INTEGER                         not null,  /*���۵���Ʒ��ϸID   */
   SALHT003             INTEGER                         not null,  /*�ض����Է���       */
   SALHT004             INTEGER                         not null,  /*�ض���������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER ,                                   /*����״̬           */
   constraint PK_TB_SALHT primary key (SALHT_ID)
);
create unique index AK_TB_SALHT on TB_SALHT (SALHT002,SALHT003,FLAG);
create sequence SEQ_TB_SALHT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHT to public;
grant index  on TB_SALHT to public;
grant update on TB_SALHT to public; 
grant delete on TB_SALHT to public;  
grant insert on TB_SALHT to public; 
grant select on SEQ_TB_SALHT to public;   
