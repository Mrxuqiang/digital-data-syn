/*
20130917 add by gaoxl for ����
*/
/*
================================================================================
��ṹ����:TB_PUBJK
��ṹ����:�̳��������
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_PUBJK;
drop index AK_TB_PUBJK;
drop table TB_PUBJK;
create table TB_PUBJK  (
   PUBJK_ID             INTEGER                         not null,  /*�̳�������id         */
   PUBJK001             INTEGER                         not null,  /*�̳�ID                 */   
   PUBJK002             INTEGER                         not null,  /*������ID               */
   PUBJK003             VARCHAR2(16),                              /*������˾����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER,                                    /*����״̬               */
   constraint PK_TB_PUBJK primary key (PUBJK_ID)
);
create unique index AK_TB_PUBJK on TB_PUBJK (PUBJK001,PUBJK002,FLAG);
create sequence SEQ_TB_PUBJK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJK to public;
grant index  on TB_PUBJK to public;
grant update on TB_PUBJK to public; 
grant delete on TB_PUBJK to public;  
grant insert on TB_PUBJK to public; 
grant select on SEQ_TB_PUBJK to public;   