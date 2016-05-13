/*
================================================================================
��ṹ����:TB_PMTIJ
��ṹ����:������ȯ����Ч�̳���Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIJ;
drop index AK_TB_PMTIJ;
drop table TB_PMTIJ;
create table TB_PMTIJ  (
   PMTIJ_ID             INTEGER                          not null, /*��Ч�̳�ID               */
   PMTIJ001             INTEGER                          not null, /*������ȯ��ID             */
   PMTIJ002             INTEGER                                  , /*�̳�ID                   */
   PMTIJ003             VARCHAR2(1)                              , /*ȫ������(0,�����룬1����)*/
   CREATE_USER          VARCHAR2(12),                              /*������Ա                 */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����             */                               
   CREATE_DATE          DATE,                                      /*��������                 */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                 */
   MODI_DATE            DATE,                                      /*�޸�����                 */
   FLAG                 NUMBER,                                    /*����״̬                 */
   constraint PK_TB_PMTIJ primary key (PMTIJ_ID)
);
create sequence SEQ_TB_PMTIJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIJ to public;
grant index  on TB_PMTIJ to public;
grant update on TB_PMTIJ to public; 
grant delete on TB_PMTIJ to public;  
grant insert on TB_PMTIJ to public; 
grant select on SEQ_TB_PMTIJ to public;