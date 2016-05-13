/*
================================================================================
��ṹ����:TB_PMTIK
��ṹ����:������ȯ����Ч�̳�Ʒ�Ʒ�Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIK;
drop index AK_TB_PMTIK;
drop table TB_PMTIK;
create table TB_PMTIK  (
   PMTIK_ID             INTEGER                         not null,  /*��Ч�̳�Ʒ�Ʒ�ΧID*/
   PMTIK001             INTEGER                         not null,  /*������ID          */
   PMTIK002             INTEGER                         ,          /*¥��ID            */
   PMTIK003             INTEGER                         ,          /*¥��ID            */
   PMTIK004             INTEGER                         ,          /*Ʒ��ID            */
   PMTIK005             INTEGER                         ,          /*Ʒ��ϵ��ID        */
   PMTIK006             INTEGER                         ,          /*�̻�ID            */
   PMTIK007             INTEGER                         ,          /*չλID            */
   PMTIK008             INTEGER                         ,          /*��ͬID            */
   PMTIK009             INTEGER                         ,          /*��Ч�̳�ID        */
   PMTIK010             INTEGER                         ,          /*��Ч�̳���Χ��ID(�����ӱ����) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����             */                               
   CREATE_DATE          DATE,                                      /*��������                 */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                 */
   MODI_DATE            DATE,                                      /*�޸�����                 */
   FLAG                 NUMBER,                                    /*����״̬                 */
   constraint PK_TB_PMTIK primary key (PMTIK_ID)
);
create sequence SEQ_TB_PMTIK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIK to public;
grant index  on TB_PMTIK to public;
grant update on TB_PMTIK to public; 
grant delete on TB_PMTIK to public;  
grant insert on TB_PMTIK to public; 
grant select on SEQ_TB_PMTIK to public;